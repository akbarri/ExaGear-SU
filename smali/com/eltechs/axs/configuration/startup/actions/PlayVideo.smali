.class public Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "PlayVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field private final videoId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    .line 16
    iput p1, p0, Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;->videoId:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 22
    const-class v0, Lcom/eltechs/axs/activities/VideoPlayerActivity;

    iget v1, p0, Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;->videoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;->requestUserInput(Ljava/lang/Class;Ljava/io/Serializable;)V

    return-void
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;->sendDone()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/axs/configuration/startup/actions/PlayVideo;->sendDone()V

    return-void
.end method
