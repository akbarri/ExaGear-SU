.class public Lcom/eltechs/axs/activities/VideoPlayerActivity;
.super Lcom/eltechs/axs/activities/FrameworkActivity;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eltechs/axs/activities/FrameworkActivity<",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/eltechs/axs/activities/FrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivity(Landroid/view/View;)V
    .locals 0

    .line 52
    sget p1, Lcom/eltechs/axs/R$id;->video_view_id:I

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    .line 54
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 55
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lcom/eltechs/axs/activities/FrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->setResult(I)V

    .line 31
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->getExtraParameter()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 33
    sget v0, Lcom/eltechs/axs/R$layout;->video:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/eltechs/axs/R$id;->video_view_id:I

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 37
    new-instance v1, Lcom/eltechs/axs/activities/VideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/activities/VideoPlayerActivity$1;-><init>(Lcom/eltechs/axs/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 46
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 47
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
