.class public Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;
.super Ljava/lang/Object;
.source "APKExpansionPolicy.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.APKExpansionPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mExpansionFileNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionFileSizes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/eltechs/axs/helpers/licensing/Obfuscator;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    const-string v0, "com.android.vending.licensing.APKExpansionPolicy"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/eltechs/axs/helpers/licensing/Obfuscator;)V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    .line 92
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "lastResponse"

    const/16 v0, 0x123

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 94
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "validityTimestamp"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 96
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "retryUntil"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 97
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "maxRetries"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 98
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "retryCount"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryCount:J

    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    .line 381
    invoke-static {v1, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 383
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 385
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 388
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v1, "Invalid syntax error while decoding extras data from server."

    .line 391
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 2

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 182
    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 183
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 2

    .line 263
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "Licence retry count (GR) missing, grace period disabled"

    .line 266
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 272
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryCount(J)V
    .locals 2

    .line 193
    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 194
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 2

    .line 237
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "License retry timestamp (GT) missing, grace period disabled"

    .line 240
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 245
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 246
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 4

    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "APKExpansionPolicy"

    const-string v0, "License validity timestamp (VT) missing, caching for a minute"

    .line 214
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 219
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 220
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 360
    iget v2, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponse:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x100

    if-ne v2, v5, :cond_0

    .line 363
    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_3

    return v4

    .line 367
    :cond_0
    iget v2, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponse:I

    const/16 v5, 0x123

    if-ne v2, v5, :cond_3

    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponseTime:J

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 372
    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryUntil:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryCount:J

    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mMaxRetries:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    return v3
.end method

.method public getExpansionFileName(I)Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpansionFileSize(I)J
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExpansionURL(I)Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpansionURLCount()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMaxRetries()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V
    .locals 5

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryCount(J)V

    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_7

    .line 140
    iget-object p2, p2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 141
    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 143
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "VT"

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "GT"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "GR"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "FILE_URL"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "FILE_URL"

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 153
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "FILE_NAME"

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "FILE_NAME"

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 156
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "FILE_SIZE"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FILE_SIZE"

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 159
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    goto/16 :goto_1

    :cond_7
    const/16 p2, 0x231

    if-ne p1, p2, :cond_8

    const-string p2, "0"

    .line 164
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    const-string p2, "0"

    .line 165
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    const-string p2, "0"

    .line 166
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 169
    :cond_8
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setLastResponse(I)V

    .line 170
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method

.method public resetPolicy()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 107
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    const-string v0, "0"

    .line 108
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    const-string v0, "0"

    .line 109
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setRetryCount(J)V

    const-string v0, "0"

    .line 110
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method

.method public setExpansionFileName(ILjava/lang/String;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpansionFileSize(IJ)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpansionURL(ILjava/lang/String;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
