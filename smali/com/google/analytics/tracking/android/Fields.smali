.class public final Lcom/google/analytics/tracking/android/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# static fields
.field public static final ANDROID_APP_UID:Ljava/lang/String; = "AppUID"

.field public static final ANONYMIZE_IP:Ljava/lang/String; = "&aip"

.field static final API_VERSION:Ljava/lang/String; = "&v"

.field public static final APP_ID:Ljava/lang/String; = "&aid"

.field public static final APP_INSTALLER_ID:Ljava/lang/String; = "&aiid"

.field public static final APP_NAME:Ljava/lang/String; = "&an"

.field public static final APP_VERSION:Ljava/lang/String; = "&av"

.field static final CACHE_BUSTER:Ljava/lang/String; = "&z"

.field public static final CAMPAIGN_CONTENT:Ljava/lang/String; = "&cc"

.field public static final CAMPAIGN_ID:Ljava/lang/String; = "&ci"

.field public static final CAMPAIGN_KEYWORD:Ljava/lang/String; = "&ck"

.field public static final CAMPAIGN_MEDIUM:Ljava/lang/String; = "&cm"

.field public static final CAMPAIGN_NAME:Ljava/lang/String; = "&cn"

.field public static final CAMPAIGN_SOURCE:Ljava/lang/String; = "&cs"

.field public static final CLIENT_ID:Ljava/lang/String; = "&cid"

.field static final CLIENT_VERSION:Ljava/lang/String; = "&_v"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "&cu"

.field static final DCLID:Ljava/lang/String; = "&dclid"

.field public static final DESCRIPTION:Ljava/lang/String; = "&cd"

.field public static final ENCODING:Ljava/lang/String; = "&de"

.field public static final EVENT_ACTION:Ljava/lang/String; = "&ea"

.field public static final EVENT_CATEGORY:Ljava/lang/String; = "&ec"

.field public static final EVENT_LABEL:Ljava/lang/String; = "&el"

.field public static final EVENT_VALUE:Ljava/lang/String; = "&ev"

.field public static final EX_DESCRIPTION:Ljava/lang/String; = "&exd"

.field public static final EX_FATAL:Ljava/lang/String; = "&exf"

.field public static final FLASH_VERSION:Ljava/lang/String; = "&fl"

.field static final GCLID:Ljava/lang/String; = "&gclid"

.field static final GMOB_T:Ljava/lang/String; = "&gmob_t"

.field static final HIT_TIME:Ljava/lang/String; = "&ht"

.field public static final HIT_TYPE:Ljava/lang/String; = "&t"

.field public static final HOSTNAME:Ljava/lang/String; = "&dh"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "&iv"

.field public static final ITEM_NAME:Ljava/lang/String; = "&in"

.field public static final ITEM_PRICE:Ljava/lang/String; = "&ip"

.field public static final ITEM_QUANTITY:Ljava/lang/String; = "&iq"

.field public static final ITEM_SKU:Ljava/lang/String; = "&ic"

.field public static final JAVA_ENABLED:Ljava/lang/String; = "&je"

.field public static final LANGUAGE:Ljava/lang/String; = "&ul"

.field public static final LOCATION:Ljava/lang/String; = "&dl"

.field public static final NON_INTERACTION:Ljava/lang/String; = "&ni"

.field public static final PAGE:Ljava/lang/String; = "&dp"

.field static final QUEUE_TIME:Ljava/lang/String; = "&qt"

.field public static final REFERRER:Ljava/lang/String; = "&dr"

.field public static final SAMPLE_RATE:Ljava/lang/String; = "&sf"

.field public static final SCREEN_COLORS:Ljava/lang/String; = "&sd"

.field public static final SCREEN_NAME:Ljava/lang/String; = "&cd"

.field public static final SCREEN_RESOLUTION:Ljava/lang/String; = "&sr"

.field public static final SESSION_CONTROL:Ljava/lang/String; = "&sc"

.field public static final SOCIAL_ACTION:Ljava/lang/String; = "&sa"

.field public static final SOCIAL_NETWORK:Ljava/lang/String; = "&sn"

.field public static final SOCIAL_TARGET:Ljava/lang/String; = "&st"

.field public static final TIMING_CATEGORY:Ljava/lang/String; = "&utc"

.field public static final TIMING_LABEL:Ljava/lang/String; = "&utl"

.field public static final TIMING_VALUE:Ljava/lang/String; = "&utt"

.field public static final TIMING_VAR:Ljava/lang/String; = "&utv"

.field public static final TITLE:Ljava/lang/String; = "&dt"

.field public static final TRACKING_ID:Ljava/lang/String; = "&tid"

.field public static final TRANSACTION_AFFILIATION:Ljava/lang/String; = "&ta"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "&ti"

.field public static final TRANSACTION_REVENUE:Ljava/lang/String; = "&tr"

.field public static final TRANSACTION_SHIPPING:Ljava/lang/String; = "&ts"

.field public static final TRANSACTION_TAX:Ljava/lang/String; = "&tt"

.field static final USAGE_TRACKING:Ljava/lang/String; = "&_u"

.field public static final USE_SECURE:Ljava/lang/String; = "useSecure"

.field public static final VIEWPORT_SIZE:Ljava/lang/String; = "&vp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentGroup(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cg"

    .line 115
    invoke-static {v0, p0}, Lcom/google/analytics/tracking/android/Fields;->getParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static customDimension(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cd"

    .line 107
    invoke-static {v0, p0}, Lcom/google/analytics/tracking/android/Fields;->getParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static customMetric(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cm"

    .line 111
    invoke-static {v0, p0}, Lcom/google/analytics/tracking/android/Fields;->getParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index out of range for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
