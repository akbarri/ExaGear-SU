.class Lcom/eltechs/axs/activities/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/VideoPlayerActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/activities/VideoPlayerActivity$1;->this$0:Lcom/eltechs/axs/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/eltechs/axs/activities/VideoPlayerActivity$1;->this$0:Lcom/eltechs/axs/activities/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->finish()V

    return-void
.end method
