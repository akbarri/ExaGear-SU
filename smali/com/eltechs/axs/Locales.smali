.class public abstract Lcom/eltechs/axs/Locales;
.super Ljava/lang/Object;
.source "Locales.java"


# static fields
.field public static final CHARSET_DEU:Ljava/lang/String; = "de_DE.UTF-8"

.field public static final CHARSET_FRA:Ljava/lang/String; = "fr_FR.UTF-8"

.field public static final CHARSET_POL:Ljava/lang/String; = "pl_PL.UTF-8"

.field public static final CHARSET_POR:Ljava/lang/String; = "pt_PT.UTF-8"

.field public static final CHARSET_RUS:Ljava/lang/String; = "ru_RU.UTF-8"

.field public static final CHARSET_SPA:Ljava/lang/String; = "es_ES.UTF-8"

.field private static final SUPPORTED_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "C"

    const-string v1, "en_US"

    const-string v2, "zh_CN.UTF8"

    const-string v3, "ru_RU.CP1251"

    const-string v4, "ru_RU.UTF-8"

    const-string v5, "pl_PL.CP1250"

    const-string v6, "pl_PL.UTF-8"

    const-string v7, "cs_CZ.CP1250"

    const-string v8, "cs_CZ.UTF-8"

    const-string v9, "de_DE.CP1252"

    const-string v10, "de_DE.UTF-8"

    const-string v11, "es_ES.CP1252"

    const-string v12, "es_ES.UTF-8"

    const-string v13, "fr_FR.CP1252"

    const-string v14, "fr_FR.UTF-8"

    const-string v15, "pt_PT.CP1252"

    const-string v16, "pt_PT.UTF-8"

    const-string v17, "pt_BR.CP1252"

    const-string v18, "pt_BR.UTF-8"

    .line 12
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/Locales;->SUPPORTED_LOCALES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedLocales()[Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/eltechs/axs/Locales;->SUPPORTED_LOCALES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static guessLocale()Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 60
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ukr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "spa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "por"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "pol"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "fra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "deu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "ces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "C"

    return-object v0

    :pswitch_0
    const-string v0, "pt_PT.UTF-8"

    return-object v0

    :pswitch_1
    const-string v0, "es_ES.UTF-8"

    return-object v0

    :pswitch_2
    const-string v0, "fr_FR.UTF-8"

    return-object v0

    :pswitch_3
    const-string v0, "de_DE.UTF-8"

    return-object v0

    :pswitch_4
    const-string v0, "pl_PL.UTF-8"

    return-object v0

    :pswitch_5
    const-string v0, "ru_RU.UTF-8"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18051 -> :sswitch_7
        0x18414 -> :sswitch_6
        0x18d15 -> :sswitch_5
        0x1b24d -> :sswitch_4
        0x1b253 -> :sswitch_3
        0x1ba90 -> :sswitch_2
        0x1bda4 -> :sswitch_1
        0x1c49c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
