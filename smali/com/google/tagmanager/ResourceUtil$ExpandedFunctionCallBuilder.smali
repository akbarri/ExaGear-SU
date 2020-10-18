.class public Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedFunctionCallBuilder"
.end annotation


# instance fields
.field private final mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .locals 3

    .line 53
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->mPropertiesMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;-><init>(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method
