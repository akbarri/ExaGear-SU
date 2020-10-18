.class public interface abstract Lcom/eltechs/axs/xserver/LocksManager;
.super Ljava/lang/Object;
.source "LocksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/LocksManager$XLock;,
        Lcom/eltechs/axs/xserver/LocksManager$Subsystem;
    }
.end annotation


# virtual methods
.method public abstract lock(Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;
.end method

.method public abstract lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;
.end method

.method public abstract lockAll()Lcom/eltechs/axs/xserver/LocksManager$XLock;
.end method

.method public abstract lockForInputDevicesManipulation()Lcom/eltechs/axs/xserver/LocksManager$XLock;
.end method
