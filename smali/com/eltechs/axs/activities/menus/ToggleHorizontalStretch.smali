.class public Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;
.super Lcom/eltechs/axs/widgets/actions/AbstractAction;
.source "ToggleHorizontalStretch.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;->getCurrentXServerDisplayActivity()Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->isHorizontalStretchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/eltechs/axs/R$string;->show_normal:I

    .line 27
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/eltechs/axs/R$string;->show_stretched:I

    .line 28
    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/menus/ToggleHorizontalStretch;->getCurrentXServerDisplayActivity()Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;

    invoke-direct {v1}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->isHorizontalStretchEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->setHorizontalStretchEnabled(Z)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->setHorizontalStretchEnabled(Z)V

    return-void
.end method
