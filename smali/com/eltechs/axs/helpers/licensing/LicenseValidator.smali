.class Lcom/eltechs/axs/helpers/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/licensing/Policy;Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    .line 58
    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mDeviceLimiter:Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;

    .line 59
    iput-object p3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    .line 60
    iput p4, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mNonce:I

    .line 61
    iput-object p5, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->applicationError(I)V

    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->dontAllow(I)V

    return-void
.end method

.method private handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/helpers/licensing/Policy;->processServerResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    .line 208
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    invoke-interface {p2}, Lcom/eltechs/axs/helpers/licensing/Policy;->allowAccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 209
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->dontAllow(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    goto/16 :goto_1

    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "SHA1withRSA"

    .line 95
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 96
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 97
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    .line 99
    invoke-static {p4}, Lcom/eltechs/axs/helpers/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LicenseValidator"

    const-string p2, "Signature verification failed."

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/eltechs/axs/helpers/Base64$DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 120
    :cond_2
    :try_start_1
    invoke-static {p3}, Lcom/eltechs/axs/helpers/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/eltechs/axs/helpers/licensing/ResponseData;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    iget p1, v2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->responseCode:I

    if-eq p1, p2, :cond_3

    const-string p1, "LicenseValidator"

    const-string p2, "Response codes don\'t match."

    .line 128
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 133
    :cond_3
    iget p1, v2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->nonce:I

    iget p3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mNonce:I

    if-eq p1, p3, :cond_4

    const-string p1, "LicenseValidator"

    const-string p2, "Nonce doesn\'t match."

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 139
    :cond_4
    iget-object p1, v2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "LicenseValidator"

    const-string p2, "Package name doesn\'t match."

    .line 140
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 145
    :cond_5
    iget-object p1, v2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object p3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "LicenseValidator"

    const-string p2, "Version codes don\'t match."

    .line 146
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    .line 152
    :cond_6
    iget-object p1, v2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p1, "LicenseValidator"

    const-string p2, "User identifier is empty."

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :cond_7
    :goto_1
    const/16 p3, 0x123

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const-string p1, "LicenseValidator"

    const-string p2, "Unknown response code for license check."

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_2

    .line 185
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    .line 182
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    :pswitch_2
    const-string p1, "LicenseValidator"

    const-string p2, "Error contacting licensing server."

    .line 170
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p3, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    goto :goto_2

    :pswitch_3
    const-string p1, "LicenseValidator"

    const-string p2, "Licensing server is refusing to talk to this device, over quota."

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p3, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    goto :goto_2

    :pswitch_4
    const-string p1, "LicenseValidator"

    const-string p2, "An error has occurred on the licensing server."

    .line 174
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, p3, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    goto :goto_2

    :pswitch_5
    const/4 p1, 0x3

    .line 188
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_2

    :pswitch_6
    const/16 p1, 0x231

    .line 167
    invoke-direct {p0, p1, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    goto :goto_2

    .line 163
    :pswitch_7
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->mDeviceLimiter:Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result p1

    .line 164
    invoke-direct {p0, p1, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    :goto_2
    return-void

    :catch_0
    const-string p1, "LicenseValidator"

    const-string p2, "Could not parse response."

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :catch_1
    const-string p1, "LicenseValidator"

    const-string p2, "Could not Base64-decode signature."

    .line 113
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleInvalidResponse()V

    return-void

    :catch_2
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    const/4 p1, 0x5

    .line 108
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->handleApplicationError(I)V

    return-void

    :catch_4
    move-exception p1

    .line 106
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
