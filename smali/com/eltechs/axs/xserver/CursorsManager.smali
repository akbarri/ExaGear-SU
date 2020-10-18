.class public interface abstract Lcom/eltechs/axs/xserver/CursorsManager;
.super Ljava/lang/Object;
.source "CursorsManager.java"


# virtual methods
.method public abstract addCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
.end method

.method public abstract createCursor(IIILcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;)Lcom/eltechs/axs/xserver/Cursor;
.end method

.method public abstract createFakeCursor(I)Lcom/eltechs/axs/xserver/Cursor;
.end method

.method public abstract freeCursor(Lcom/eltechs/axs/xserver/Cursor;)V
.end method

.method public abstract getCursor(I)Lcom/eltechs/axs/xserver/Cursor;
.end method

.method public abstract recolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V
.end method

.method public abstract removeCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
.end method
