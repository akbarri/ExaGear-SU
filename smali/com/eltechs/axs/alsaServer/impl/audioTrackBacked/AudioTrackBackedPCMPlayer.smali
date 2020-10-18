.class public Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;
.super Ljava/lang/Object;
.source "AudioTrackBackedPCMPlayer.java"

# interfaces
.implements Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;


# instance fields
.field final audioTrack:Landroid/media/AudioTrack;

.field private framesWritten:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public drainBuffer()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public flushBuffer()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    return-void
.end method

.method public getPlayingPosition()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    return v0
.end method

.method public pausePlaying()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public startPlaying()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public stopAndReleaseResources()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

.method public writeData([BII)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    .line 86
    iget p1, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    iget-object p2, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result p2

    div-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    return-void
.end method

.method public writeData([SII)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([SII)I

    .line 93
    iget p1, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    iget-object p2, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result p2

    div-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;->framesWritten:I

    return-void
.end method
