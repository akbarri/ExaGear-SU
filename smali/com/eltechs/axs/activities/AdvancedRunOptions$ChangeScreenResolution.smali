.class Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "AdvancedRunOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/AdvancedRunOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeScreenResolution"
.end annotation


# instance fields
.field private final resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

.field final synthetic this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;)V
    .locals 2

    .line 270
    iput-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    .line 271
    iget v0, p2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->width:I

    iget v1, p2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->height:I

    invoke-static {p1, v0, v1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$000(Lcom/eltechs/axs/activities/AdvancedRunOptions;II)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;Z)V

    .line 272
    iput-object p2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v1, v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->width:I

    iget v2, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v1, v1, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->height:I

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 9

    .line 285
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    new-instance v8, Lcom/eltechs/axs/xserver/ScreenInfo;

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v3, v2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->width:I

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v4, v2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->height:I

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v2, v2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->width:I

    div-int/lit8 v5, v2, 0xa

    iget-object v2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->resolution:Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;

    iget v2, v2, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->height:I

    div-int/lit8 v6, v2, 0xa

    iget v7, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(IIIII)V

    invoke-virtual {v1, v8}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    .line 293
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeScreenResolution;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$200(Lcom/eltechs/axs/activities/AdvancedRunOptions;)V

    return-void
.end method
