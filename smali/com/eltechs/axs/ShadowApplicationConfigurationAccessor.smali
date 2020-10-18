.class public Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;
.super Lcom/eltechs/axs/ApplicationConfigurationAccessor;
.source "ShadowApplicationConfigurationAccessor.java"


# static fields
.field private static final SHADOW_PARAM_USAGE_PREFIX:Ljava/lang/String; = "axs_shadow_usage_"


# instance fields
.field private final keyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/eltechs/axs/ApplicationConfigurationAccessor;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "axs_shadow_usage_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->keyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isUsageShown()Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->keyName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setUsageShown(Z)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/eltechs/axs/ShadowApplicationConfigurationAccessor;->keyName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
