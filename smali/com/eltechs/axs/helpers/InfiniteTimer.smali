.class public abstract Lcom/eltechs/axs/helpers/InfiniteTimer;
.super Landroid/os/CountDownTimer;
.source "InfiniteTimer.java"


# static fields
.field private static veryLongPeriod:J = 0x5265c00L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 19
    sget-wide v0, Lcom/eltechs/axs/helpers/InfiniteTimer;->veryLongPeriod:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/eltechs/axs/helpers/InfiniteTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
