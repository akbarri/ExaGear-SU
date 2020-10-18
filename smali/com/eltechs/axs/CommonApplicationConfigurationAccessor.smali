.class public Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;
.super Lcom/eltechs/axs/ApplicationConfigurationAccessor;
.source "CommonApplicationConfigurationAccessor.java"


# static fields
.field private static final CONFIG_HORIZ_STRETCH:Ljava/lang/String; = "axs_config_stretch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/eltechs/axs/ApplicationConfigurationAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public isHorizontalStretchEnabled()Z
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "axs_config_stretch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHorizontalStretchEnabled(Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/CommonApplicationConfigurationAccessor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "axs_config_stretch"

    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
