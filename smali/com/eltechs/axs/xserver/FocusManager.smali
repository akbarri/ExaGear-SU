.class public interface abstract Lcom/eltechs/axs/xserver/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
    }
.end annotation


# virtual methods
.method public abstract addFocusListner(Lcom/eltechs/axs/xserver/FocusListener;)V
.end method

.method public abstract getFocusReversionPolicy()Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
.end method

.method public abstract getFocusedWindow()Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract removeFocusListener(Lcom/eltechs/axs/xserver/FocusListener;)V
.end method

.method public abstract setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V
.end method
