.class public Lcom/eltechs/axs/helpers/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LicenseChecker"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/eltechs/axs/helpers/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/eltechs/axs/helpers/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/helpers/licensing/Policy;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    .line 90
    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    .line 92
    invoke-static {p3}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 93
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 94
    iget-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    .line 95
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "background thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->finishCheck(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)Ljava/util/Set;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanupService()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LicenseChecker"

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    :cond_0
    return-void
.end method

.method private declared-synchronized finishCheck(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 191
    monitor-exit p0

    throw p1
.end method

.method private generateNonce()I
    .locals 1

    .line 332
    sget-object v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/eltechs/axs/helpers/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "RSA"

    .line 110
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/eltechs/axs/helpers/Base64$DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "LicenseChecker"

    const-string v1, "Invalid key specification."

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    const-string v0, "LicenseChecker"

    const-string v1, "Could not decode from Base64."

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "LicenseChecker"

    const-string p1, "Package not found. could not get version code."

    .line 347
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
    .locals 3

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    const/4 v1, 0x0

    const/16 v2, 0x123

    invoke-interface {v0, v2, v1}, Lcom/eltechs/axs/helpers/licensing/Policy;->processServerResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V

    .line 296
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    invoke-interface {v0}, Lcom/eltechs/axs/helpers/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->getCallback()Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->getCallback()Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit p0

    throw p1
.end method

.method private runChecks()V
    .locals 6

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "LicenseChecker"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 181
    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->getNonce()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-direct {v5, p0, v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;-><init>(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    .line 180
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V

    .line 183
    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    .line 185
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;)V
    .locals 8

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    invoke-interface {v0}, Lcom/eltechs/axs/helpers/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LicenseChecker"

    const-string v1, "Using cached license response"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    .line 141
    invoke-interface {p1, v0}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v7, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPolicy:Lcom/eltechs/axs/helpers/licensing/Policy;

    new-instance v2, Lcom/eltechs/axs/helpers/licensing/NullDeviceLimiter;

    invoke-direct {v2}, Lcom/eltechs/axs/helpers/licensing/NullDeviceLimiter;-><init>()V

    .line 144
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->generateNonce()I

    move-result v4

    iget-object v5, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;-><init>(Lcom/eltechs/axs/helpers/licensing/Policy;Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-nez v0, :cond_2

    const-string v0, "LicenseChecker"

    const-string v1, "Binding to licensing service."

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    .line 153
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v0, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "LicenseChecker"

    const-string v1, "Could not bind to service."

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, v7}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/eltechs/axs/helpers/Base64$DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    :try_start_2
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/Base64$DecoderException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x6

    .line 164
    invoke-interface {p1, v0}, Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;->applicationError(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->runChecks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->cleanupService()V

    .line 327
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 325
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 277
    :try_start_0
    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 278
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->runChecks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "LicenseChecker"

    const-string v0, "Service unexpectedly disconnected."

    .line 285
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 284
    monitor-exit p0

    throw p1
.end method
