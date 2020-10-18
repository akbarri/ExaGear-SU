.class Lcom/google/analytics/tracking/android/Hit;
.super Ljava/lang/Object;
.source "Hit.java"


# instance fields
.field private final mHitId:J

.field private mHitString:Ljava/lang/String;

.field private final mHitTime:J

.field private mHitUrlScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https:"

    .line 17
    iput-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/Hit;->mHitId:J

    .line 38
    iput-wide p4, p0, Lcom/google/analytics/tracking/android/Hit;->mHitTime:J

    return-void
.end method


# virtual methods
.method getHitId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitId:J

    return-wide v0
.end method

.method getHitParams()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    return-object v0
.end method

.method getHitTime()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitTime:J

    return-wide v0
.end method

.method getHitUrlScheme()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method setHitString(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->mHitString:Ljava/lang/String;

    return-void
.end method

.method setHitUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "http:"

    .line 62
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->mHitUrlScheme:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
