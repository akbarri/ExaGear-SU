.class Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "AdvancedRunOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/AdvancedRunOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeColourDepth"
.end annotation


# instance fields
.field private final bpp:I

.field final synthetic this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/AdvancedRunOptions;I)V
    .locals 1

    .line 302
    iput-object p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    .line 303
    invoke-static {p1, p2}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$300(Lcom/eltechs/axs/activities/AdvancedRunOptions;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;Z)V

    .line 304
    iput p2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->bpp:I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 311
    iget v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->bpp:I

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

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

    .line 317
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v1}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$100(Lcom/eltechs/axs/activities/AdvancedRunOptions;)Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;

    move-result-object v1

    new-instance v8, Lcom/eltechs/axs/xserver/ScreenInfo;

    iget v3, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    iget v4, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    iget v5, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInMillimeters:I

    iget v6, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInMillimeters:I

    iget v7, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->bpp:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(IIIII)V

    invoke-virtual {v1, v8}, Lcom/eltechs/axs/configuration/startup/EnvironmentCustomisationParameters;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)V

    .line 325
    iget-object v0, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ChangeColourDepth;->this$0:Lcom/eltechs/axs/activities/AdvancedRunOptions;

    invoke-static {v0}, Lcom/eltechs/axs/activities/AdvancedRunOptions;->access$200(Lcom/eltechs/axs/activities/AdvancedRunOptions;)V

    return-void
.end method
