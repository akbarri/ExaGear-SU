.class public Lcom/eltechs/ed/Locales;
.super Ljava/lang/Object;
.source "Locales.java"


# static fields
.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "en_US.utf8"

.field public static final SUPPORTED_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "en_US.utf8"

    const-string v1, "cs_CZ.utf8"

    const-string v2, "fr_FR.utf8"

    const-string v3, "de_DE.utf8"

    const-string v4, "he_IL.utf8"

    const-string v5, "it_IT.utf8"

    const-string v6, "ru_RU.utf8"

    const-string v7, "pl_PL.utf8"

    const-string v8, "pt_PT.utf8"

    const-string v9, "es_ES.utf8"

    .line 12
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eltechs/ed/Locales;->SUPPORTED_LOCALES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocaleByDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 32
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ukr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "spa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_2
    const-string v0, "rus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "por"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "pol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "ita"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "heb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "fra"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "deu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "ces"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string p0, "en_US.utf8"

    return-object p0

    :pswitch_0
    const-string p0, "es_ES.utf8"

    return-object p0

    :pswitch_1
    const-string p0, "ru_RU.utf8"

    return-object p0

    :pswitch_2
    const-string p0, "pt_PT.utf8"

    return-object p0

    :pswitch_3
    const-string p0, "pl_PL.utf8"

    return-object p0

    :pswitch_4
    const-string p0, "it_IT.utf8"

    return-object p0

    :pswitch_5
    const-string p0, "he_IL.utf8"

    return-object p0

    :pswitch_6
    const-string p0, "fr_FR.utf8"

    return-object p0

    :pswitch_7
    const-string p0, "de_DE.utf8"

    return-object p0

    :pswitch_8
    const-string p0, "cs_CZ.utf8"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18051 -> :sswitch_9
        0x18414 -> :sswitch_8
        0x18d15 -> :sswitch_7
        0x19305 -> :sswitch_6
        0x19896 -> :sswitch_5
        0x1b24d -> :sswitch_4
        0x1b253 -> :sswitch_3
        0x1ba90 -> :sswitch_2
        0x1bda4 -> :sswitch_1
        0x1c49c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
