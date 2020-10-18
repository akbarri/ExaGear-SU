.class public Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"


# instance fields
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/eltechs/axs/helpers/licensing/Obfuscator;)V

    iput-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    .line 78
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "lastResponse"

    const/16 v0, 0x123

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 80
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "validityTimestamp"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 82
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "retryUntil"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 83
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "maxRetries"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 84
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string p2, "retryCount"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryCount:J

    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
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

    .line 266
    invoke-static {v1, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 268
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v1, "Invalid syntax error while decoding extras data from server."

    .line 271
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 138
    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 2

    .line 219
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "Licence retry count (GR) missing, grace period disabled"

    .line 222
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 227
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 228
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryCount(J)V
    .locals 2

    .line 149
    iput-wide p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 150
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 2

    .line 193
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "License retry timestamp (GT) missing, grace period disabled"

    .line 196
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    const-wide/16 v0, 0x0

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 4

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "License validity timestamp (VT) missing, caching for a minute"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 176
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    iget v2, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponse:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x100

    if-ne v2, v5, :cond_0

    .line 249
    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_3

    return v4

    .line 253
    :cond_0
    iget v2, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v5, 0x123

    if-ne v2, v5, :cond_3

    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 257
    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v5, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    return v3
.end method

.method public getMaxRetries()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V
    .locals 4

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setRetryCount(J)V

    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 113
    iget-object p2, p2, Lcom/eltechs/axs/helpers/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 114
    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mLastResponse:I

    const-string v0, "VT"

    .line 115
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    const-string v0, "GT"

    .line 116
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    const-string v0, "GR"

    .line 117
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x231

    if-ne p1, p2, :cond_2

    const-string p2, "0"

    .line 120
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    const-string p2, "0"

    .line 121
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    const-string p2, "0"

    .line 122
    invoke-direct {p0, p2}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 125
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->setLastResponse(I)V

    .line 126
    iget-object p1, p0, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;->mPreferences:Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;

    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method
