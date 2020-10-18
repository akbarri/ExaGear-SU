.class public Lcom/eltechs/ed/AppRunGuide;
.super Ljava/lang/Object;
.source "AppRunGuide.java"


# static fields
.field public static ID_CIV3:Ljava/lang/String; = "civ3"

.field public static ID_DIVINE_DIVINITY:Ljava/lang/String; = "divine_divinity"

.field public static ID_FALLOUT:Ljava/lang/String; = "fallout"

.field public static ID_FALLOUT2:Ljava/lang/String; = "fallout2"

.field public static final guidesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/eltechs/ed/AppRunGuide;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBodyRes:I

.field public mHeaderRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/eltechs/ed/AppRunGuide$1;

    invoke-direct {v0}, Lcom/eltechs/ed/AppRunGuide$1;-><init>()V

    sput-object v0, Lcom/eltechs/ed/AppRunGuide;->guidesMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/eltechs/ed/AppRunGuide;->mHeaderRes:I

    .line 21
    iput p2, p0, Lcom/eltechs/ed/AppRunGuide;->mBodyRes:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/eltechs/ed/AppRunGuide$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/eltechs/ed/AppRunGuide;-><init>(II)V

    return-void
.end method
