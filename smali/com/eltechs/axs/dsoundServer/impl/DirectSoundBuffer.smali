.class public interface abstract Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;
.super Ljava/lang/Object;
.source "DirectSoundBuffer.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract play(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recalcVolpan(II)V
.end method

.method public abstract resumePlayback()V
.end method

.method public abstract setCurrentPosition(I)Z
.end method

.method public abstract setEventCallback(Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;)V
.end method

.method public abstract setNotificationPositions([I[I)V
.end method

.method public abstract stop()V
.end method

.method public abstract suspendPlayback()V
.end method
