.class public abstract Lcom/google/analytics/tracking/android/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatchLocalHits()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract onRadioPowered()V
.end method

.method public abstract setForceLocalDispatch()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocalDispatchPeriod(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract updateConnectivityStatus(Z)V
.end method
