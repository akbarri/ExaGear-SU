.class public Lcom/eltechs/axs/helpers/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field public static final MSEC_IN_DAY:J = 0x5265c00L

.field public static final MSEC_IN_HOUR:J = 0x36ee80L

.field public static final MSEC_IN_MINUTE:J = 0xea60L

.field public static final MSEC_IN_SECOND:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiffDays(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 32
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static getDiffHours(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 27
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x36ee80

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static getDiffMinutes(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 22
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xea60

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static getDiffSeconds(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 17
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-wide v0
.end method
