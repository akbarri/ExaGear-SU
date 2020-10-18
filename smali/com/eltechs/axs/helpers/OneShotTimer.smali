.class public abstract Lcom/eltechs/axs/helpers/OneShotTimer;
.super Landroid/os/CountDownTimer;
.source "OneShotTimer.java"


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0xa

    mul-long/2addr v0, p1

    .line 16
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onTick(J)V
    .locals 0

    return-void
.end method
