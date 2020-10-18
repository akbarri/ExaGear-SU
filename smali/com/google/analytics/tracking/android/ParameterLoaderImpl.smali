.class Lcom/google/analytics/tracking/android/ParameterLoaderImpl;
.super Ljava/lang/Object;
.source "ParameterLoaderImpl.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ParameterLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverrideResourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "bool"

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "true"

    .line 66
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberFormatException parsing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "integer"

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return p2

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberFormatException parsing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isBooleanKeyPresent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "bool"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    return-void
.end method
