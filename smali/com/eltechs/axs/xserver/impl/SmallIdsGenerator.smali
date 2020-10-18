.class public abstract Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;
.super Ljava/lang/Object;
.source "SmallIdsGenerator.java"


# static fields
.field private static id:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateId()I
    .locals 2

    .line 26
    sget v0, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->id:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->id:I

    return v0
.end method
