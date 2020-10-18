.class public interface abstract Lcom/eltechs/axs/xserver/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/Drawable$ModificationListener;
    }
.end annotation


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getId()I
.end method

.method public abstract getPainter()Lcom/eltechs/axs/xserver/Painter;
.end method

.method public abstract getRoot()Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
.end method

.method public abstract getWidth()I
.end method

.method public abstract installModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V
.end method
