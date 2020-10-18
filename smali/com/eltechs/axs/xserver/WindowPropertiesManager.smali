.class public interface abstract Lcom/eltechs/axs/xserver/WindowPropertiesManager;
.super Ljava/lang/Object;
.source "WindowPropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;
    }
.end annotation


# virtual methods
.method public abstract deleteProperty(Lcom/eltechs/axs/xserver/Atom;)V
.end method

.method public abstract getProperty(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/WindowProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Atom;",
            ")",
            "Lcom/eltechs/axs/xserver/WindowProperty<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;)Lcom/eltechs/axs/xserver/WindowProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;)",
            "Lcom/eltechs/axs/xserver/WindowProperty<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract modifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;",
            "Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;",
            "TT;)Z"
        }
    .end annotation
.end method
