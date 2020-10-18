.class public abstract Lcom/eltechs/axs/productsRegistry/ProductIDs;
.super Ljava/lang/Object;
.source "ProductIDs.java"


# static fields
.field public static final ARCANUM_DEMO:I = 0x1

.field public static final CIV3:I = 0x8

.field public static final DOOM:I = 0x0

.field public static final ENGLISH123:I = 0x5

.field public static final HERETIC:I = 0x3

.field public static final HEROES2:I = 0x7

.field public static final HEROES3:I = 0x4

.field public static final OFFICE_DEMO:I = 0x2

.field public static final PETKA:I = 0x6

.field public static final RPG:I = 0xa

.field public static final SHTIRLITZ1:I = 0xb

.field public static final STRATEGIES:I = 0x9

.field public static final WDESKTOP:I = 0xc


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPackageName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "com.eltechs.ed"

    return-object p0

    :pswitch_1
    const-string p0, "ru.buka.shtirlitz_1"

    return-object p0

    :pswitch_2
    const-string p0, "com.eltechs.erpg"

    return-object p0

    :pswitch_3
    const-string p0, "com.eltechs.es"

    return-object p0

    :pswitch_4
    const-string p0, "ru.buka.petka1"

    return-object p0

    :pswitch_5
    const-string p0, "com.eltechs.english123"

    return-object p0

    :pswitch_6
    const-string v1, "The product %d has been discontinued."

    const/4 v2, 0x1

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p0, "com.eltechs.hereticbyeltechs"

    return-object p0

    :pswitch_8
    const-string p0, "com.eltechs.msoffice"

    return-object p0

    :pswitch_9
    const-string p0, "com.eltechs.arcanum"

    return-object p0

    :pswitch_a
    const-string p0, "com.eltechs.doombyeltechs"

    return-object p0

    :goto_0
    const-string p0, "Invalid product ID"

    .line 65
    invoke-static {v0, p0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
