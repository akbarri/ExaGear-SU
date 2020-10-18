.class public Lcom/eltechs/ed/ContainerPackage;
.super Ljava/lang/Object;
.source "ContainerPackage.java"


# static fields
.field public static final LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/ContainerPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Lcom/eltechs/ed/ContainerPackage;

    new-instance v1, Lcom/eltechs/ed/ContainerPackage;

    const-string v2, "Core Fonts"

    const-string v3, "corefonts"

    invoke-direct {v1, v2, v3}, Lcom/eltechs/ed/ContainerPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/ContainerPackage;

    const-string v2, "Tahoma Font"

    const-string v3, "tahoma"

    invoke-direct {v1, v2, v3}, Lcom/eltechs/ed/ContainerPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/ContainerPackage;

    const-string v2, "MS .NET 2.0"

    const-string v3, "dotnet20"

    invoke-direct {v1, v2, v3}, Lcom/eltechs/ed/ContainerPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/ContainerPackage;

    const-string v2, "MS Jet 4.0 (+ MS DAC 2.7)"

    const-string v3, "jet40"

    invoke-direct {v1, v2, v3}, Lcom/eltechs/ed/ContainerPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/eltechs/ed/ContainerPackage;->LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/eltechs/ed/ContainerPackage;->mDisplayName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/eltechs/ed/ContainerPackage;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/eltechs/ed/ContainerPackage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
