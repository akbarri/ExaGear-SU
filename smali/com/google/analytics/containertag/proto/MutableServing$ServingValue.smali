.class public final Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.source "MutableServing.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableServing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServingValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final EXT_FIELD_NUMBER:I = 0x65

.field public static final LIST_ITEM_FIELD_NUMBER:I = 0x1

.field public static final MACRO_NAME_REFERENCE_FIELD_NUMBER:I = 0x6

.field public static final MACRO_REFERENCE_FIELD_NUMBER:I = 0x4

.field public static final MAP_KEY_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEMPLATE_TOKEN_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

.field public static final ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private macroNameReference_:I

.field private macroReference_:I

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1459
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    .line 1460
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->initFields()V

    .line 1461
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->makeImmutable()V

    .line 1462
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    .line 1471
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v2

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v3

    sget-object v6, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-class v7, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    const/4 v4, 0x0

    const/16 v5, 0x65

    invoke-static/range {v1 .. v7}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/tagmanager/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/MessageLite;Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;ILcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ext:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 707
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 732
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    .line 810
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    .line 888
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    .line 1001
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    .line 707
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    .line 810
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    .line 888
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    .line 1001
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    return-void
.end method

.method private ensureListItemInitialized()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureMapKeyInitialized()V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureMapValueInitialized()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureTemplateTokenInitialized()V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 719
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 713
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllListItem(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;"
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 795
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureListItemInitialized()V

    .line 796
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapKey(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 873
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapKeyInitialized()V

    .line 874
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapValue(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;"
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 951
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapValueInitialized()V

    .line 952
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTemplateToken(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;"
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1064
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureTemplateTokenInitialized()V

    .line 1065
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addListItem(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 785
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureListItemInitialized()V

    .line 786
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapKey(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 863
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapKeyInitialized()V

    .line 864
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapValue(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 941
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapValueInitialized()V

    .line 942
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTemplateToken(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1054
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureTemplateTokenInitialized()V

    .line 1055
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 3

    .line 1373
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1374
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const/4 v0, 0x0

    .line 1375
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    .line 1376
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    .line 1377
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    const/4 v1, 0x0

    .line 1378
    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    .line 1379
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    .line 1380
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    .line 1381
    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    .line 1382
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->clear()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->clear()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public clearListItem()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 804
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    return-object p0
.end method

.method public clearMacroNameReference()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1108
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    return-object p0
.end method

.method public clearMacroReference()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 994
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 995
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    const/4 v0, 0x0

    .line 996
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    return-object p0
.end method

.method public clearMapKey()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 882
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    const/4 v0, 0x0

    .line 883
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    return-object p0
.end method

.method public clearMapValue()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    return-object p0
.end method

.method public clearTemplateToken()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    const/4 v0, 0x0

    .line 1074
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->clone()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->clone()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1390
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    if-nez v1, :cond_1

    .line 1391
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1393
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    .line 1396
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 1398
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1400
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 1402
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroReference()Z

    move-result v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    .line 1403
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroReference()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 1404
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroReference()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroReference()I

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 1407
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 1409
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroNameReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroNameReference()Z

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v2

    .line 1410
    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroNameReference()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 1411
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroNameReference()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroNameReference()I

    move-result p1

    if-ne v1, p1, :cond_a

    move v1, v0

    goto :goto_7

    :cond_a
    move v1, v2

    :cond_b
    :goto_7
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 722
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public getListItem(I)I
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getListItemCount()I
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 745
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMacroNameReference()I
    .locals 1

    .line 1092
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    return v0
.end method

.method public getMacroReference()I
    .locals 1

    .line 979
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    return v0
.end method

.method public getMapKey(I)I
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapKeyCount()I
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapValue(I)I
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapValueCount()I
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 901
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 754
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureListItemInitialized()V

    .line 755
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 832
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapKeyInitialized()V

    .line 833
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 909
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 910
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapValueInitialized()V

    .line 911
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1023
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureTemplateTokenInitialized()V

    .line 1024
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;",
            ">;"
        }
    .end annotation

    .line 727
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1316
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    move v3, v0

    .line 1318
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1319
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    .line 1323
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1325
    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    move v4, v3

    .line 1327
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1328
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v4

    .line 1332
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1334
    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v1

    move v4, v3

    .line 1336
    :goto_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1337
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v0, v4

    .line 1341
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1343
    :cond_5
    iget v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_6

    const/4 v3, 0x4

    .line 1344
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 1347
    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    move v3, v1

    .line 1349
    :goto_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1350
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v0, v3

    .line 1354
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 1356
    :cond_8
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x6

    .line 1357
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1360
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1361
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->cachedSize:I

    return v0
.end method

.method public getTemplateToken(I)I
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTemplateTokenCount()I
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1014
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMacroNameReference()Z
    .locals 2

    .line 1086
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMacroReference()Z
    .locals 2

    .line 973
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1420
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getListItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x13a46

    .line 1422
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 1424
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapKeyCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 1426
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1428
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapValueCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 1430
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1432
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroReference()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 1434
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroReference()I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getTemplateTokenCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 1438
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1440
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroNameReference()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x6

    mul-int/2addr v2, v3

    .line 1442
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroNameReference()I

    move-result v0

    add-int/2addr v0, v2

    :cond_5
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 1444
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1452
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Serving$ServingValue"

    .line 1453
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 1455
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 1123
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1127
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 1128
    :cond_1
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1129
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureListItemInitialized()V

    .line 1130
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1132
    :cond_2
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1133
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapKeyInitialized()V

    .line 1134
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1136
    :cond_3
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1137
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapValueInitialized()V

    .line 1138
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1140
    :cond_4
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroReference()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1141
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->setMacroReference(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    .line 1143
    :cond_5
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1144
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureTemplateTokenInitialized()V

    .line 1145
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1147
    :cond_6
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->hasMacroNameReference()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1148
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getMacroNameReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->setMacroNameReference(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    .line 1150
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 702
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 1157
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    const/4 v0, 0x0

    .line 1159
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 1161
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_d

    .line 1166
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1172
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    goto/16 :goto_6

    .line 1260
    :sswitch_0
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    .line 1261
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    goto :goto_0

    .line 1248
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1249
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1250
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    .line 1253
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_2

    .line 1254
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1256
    :cond_2
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 1241
    :sswitch_2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-nez v4, :cond_3

    .line 1242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    .line 1244
    :cond_3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    :sswitch_3
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    .line 1237
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    goto :goto_0

    .line 1224
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1225
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1226
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-nez v5, :cond_4

    .line 1227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    .line 1229
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5

    .line 1230
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1232
    :cond_5
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1217
    :sswitch_5
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-nez v4, :cond_6

    .line 1218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    .line 1220
    :cond_6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1205
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1206
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1207
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-nez v5, :cond_7

    .line 1208
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    .line 1210
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_8

    .line 1211
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1213
    :cond_8
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1198
    :sswitch_7
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    if-nez v4, :cond_9

    .line 1199
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    .line 1201
    :cond_9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1186
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1187
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1188
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-nez v5, :cond_a

    .line 1189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    .line 1191
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_b

    .line 1192
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1194
    :cond_b
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1179
    :sswitch_9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    if-nez v4, :cond_c

    .line 1180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    .line 1182
    :cond_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :goto_5
    :sswitch_a
    move v3, v4

    goto/16 :goto_0

    :goto_6
    if-nez v5, :cond_0

    goto :goto_5

    .line 1266
    :cond_d
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 1267
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0xa -> :sswitch_8
        0x10 -> :sswitch_7
        0x12 -> :sswitch_6
        0x18 -> :sswitch_5
        0x1a -> :sswitch_4
        0x20 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2a -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 710
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public setListItem(II)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 776
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureListItemInitialized()V

    .line 777
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroNameReference(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1099
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    .line 1100
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    return-object p0
.end method

.method public setMacroReference(I)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 985
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 986
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    .line 987
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    return-object p0
.end method

.method public setMapKey(II)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 854
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapKeyInitialized()V

    .line 855
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapValue(II)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 931
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 932
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureMapValueInitialized()V

    .line 933
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateToken(II)Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->assertMutable()V

    .line 1045
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->ensureTemplateTokenInitialized()V

    .line 1046
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1369
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 1278
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1279
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1280
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->listItem_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    .line 1284
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1285
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapKey_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1288
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    if-eqz v1, :cond_2

    move v1, v2

    .line 1289
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    const/4 v5, 0x3

    .line 1290
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->mapValue_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1293
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x4

    .line 1294
    iget v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroReference_:I

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1296
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1297
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    const/4 v1, 0x5

    .line 1298
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->templateToken_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1301
    :cond_4
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    .line 1302
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->macroNameReference_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1304
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 1305
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 1306
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$ServingValue;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_6

    .line 1307
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method
