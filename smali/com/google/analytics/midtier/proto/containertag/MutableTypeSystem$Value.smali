.class public final Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;
.source "MutableTypeSystem.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;,
        Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage<",
        "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final BOOLEAN_FIELD_NUMBER:I = 0xc

.field public static final CONTAINS_REFERENCES_FIELD_NUMBER:I = 0x9

.field public static final ESCAPING_FIELD_NUMBER:I = 0xa

.field public static final FUNCTION_ID_FIELD_NUMBER:I = 0x7

.field public static final INTEGER_FIELD_NUMBER:I = 0x8

.field public static final LIST_ITEM_FIELD_NUMBER:I = 0x3

.field public static final MACRO_REFERENCE_FIELD_NUMBER:I = 0x6

.field public static final MAP_KEY_FIELD_NUMBER:I = 0x4

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_FIELD_NUMBER:I = 0x2

.field public static final TEMPLATE_TOKEN_FIELD_NUMBER:I = 0xb

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boolean_:Z

.field private containsReferences_:Z

.field private escaping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation
.end field

.field private functionId_:Ljava/lang/Object;

.field private integer_:J

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private macroReference_:Ljava/lang/Object;

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private string_:Ljava/lang/Object;

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1710
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1711
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->initFields()V

    .line 1712
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->makeImmutable()V

    .line 1713
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;-><init>()V

    .line 346
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 384
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    .line 555
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 654
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 753
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 825
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 967
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 1066
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    .line 19
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;-><init>()V

    .line 346
    sget-object p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 384
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    .line 555
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 654
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 753
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 825
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 967
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 1066
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    return-void
.end method

.method private ensureEscapingInitialized()V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureListItemInitialized()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureMapKeyInitialized()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureMapValueInitialized()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureTemplateTokenInitialized()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 28
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllEscaping(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;"
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1135
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureEscapingInitialized()V

    .line 1136
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllListItem(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 527
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 528
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapKey(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 626
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 627
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapValue(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;"
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 725
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 726
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTemplateToken(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1038
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 1039
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addEscaping(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 1123
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureEscapingInitialized()V

    .line 1126
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addListItem()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 504
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 505
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addListItem(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 515
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 518
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapKey()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 603
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 604
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addMapKey(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 614
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 616
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 617
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 701
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 702
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 703
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addMapValue(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 713
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 716
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTemplateToken()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 1014
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1015
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 1016
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTemplateToken(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 1026
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 1029
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 3

    .line 1557
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1558
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;

    .line 1559
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 1560
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1561
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    .line 1562
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    .line 1564
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    .line 1565
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    .line 1566
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 1567
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1568
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 1569
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 1570
    iput-wide v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    .line 1571
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v1, 0x0

    .line 1572
    iput-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    .line 1573
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1574
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    .line 1575
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    .line 1576
    iput-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    .line 1577
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public clearBoolean()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 961
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v0, 0x0

    .line 962
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    return-object p0
.end method

.method public clearContainsReferences()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1179
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v0, 0x0

    .line 1180
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    return-object p0
.end method

.method public clearEscaping()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 1145
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    return-object p0
.end method

.method public clearFunctionId()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 890
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 891
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 892
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearInteger()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 925
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 926
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 927
    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    return-object p0
.end method

.method public clearListItem()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    return-object p0
.end method

.method public clearMacroReference()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 819
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 820
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearMapKey()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    return-object p0
.end method

.method public clearMapValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    return-object p0
.end method

.method public clearString()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 450
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 451
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearTemplateToken()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1060
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    return-object p0
.end method

.method public clearType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 378
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 379
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1213
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessageForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clone()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

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

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clone()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1585
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    if-nez v1, :cond_1

    .line 1586
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1588
    :cond_1
    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1591
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1592
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1593
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1596
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasString()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasString()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1597
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasString()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 1598
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 1601
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    .line 1603
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKeyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :goto_5
    if-eqz v1, :cond_a

    .line 1605
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_6

    :cond_a
    move v1, v3

    :goto_6
    if-eqz v1, :cond_b

    .line 1607
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasMacroReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasMacroReference()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_7

    :cond_b
    move v1, v3

    .line 1608
    :goto_7
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasMacroReference()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 1609
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_8

    :cond_c
    move v1, v3

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 1612
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasFunctionId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasFunctionId()Z

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v0

    goto :goto_9

    :cond_e
    move v1, v3

    .line 1613
    :goto_9
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasFunctionId()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 1614
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_a

    :cond_f
    move v1, v3

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    .line 1617
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasInteger()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasInteger()Z

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_b

    :cond_11
    move v1, v3

    .line 1618
    :goto_b
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasInteger()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 1619
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getInteger()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getInteger()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_12

    move v1, v0

    goto :goto_c

    :cond_12
    move v1, v3

    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 1622
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasBoolean()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasBoolean()Z

    move-result v2

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_d

    :cond_14
    move v1, v3

    .line 1623
    :goto_d
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasBoolean()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 1624
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getBoolean()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getBoolean()Z

    move-result v2

    if-ne v1, v2, :cond_15

    move v1, v0

    goto :goto_e

    :cond_15
    move v1, v3

    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 1627
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateTokenList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v0

    goto :goto_f

    :cond_17
    move v1, v3

    :goto_f
    if-eqz v1, :cond_18

    .line 1629
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getEscapingList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getEscapingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v0

    goto :goto_10

    :cond_18
    move v1, v3

    :goto_10
    if-eqz v1, :cond_19

    .line 1631
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasContainsReferences()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasContainsReferences()Z

    move-result v2

    if-ne v1, v2, :cond_19

    move v1, v0

    goto :goto_11

    :cond_19
    move v1, v3

    .line 1632
    :goto_11
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasContainsReferences()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1a

    .line 1633
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getContainsReferences()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getContainsReferences()Z

    move-result p1

    if-ne v1, p1, :cond_1a

    move v1, v0

    goto :goto_12

    :cond_1a
    move v1, v3

    :cond_1b
    :goto_12
    return v1
.end method

.method public getBoolean()Z
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    return v0
.end method

.method public getContainsReferences()Z
    .locals 1

    .line 1163
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->defaultInstance:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public getEscaping(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;

    return-object p1
.end method

.method public getEscapingCount()I
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEscapingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 839
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 840
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 842
    :cond_0
    check-cast v0, [B

    .line 843
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 845
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFunctionIdAsBytes()[B
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 856
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 857
    check-cast v0, Ljava/lang/String;

    .line 858
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 859
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object v0

    .line 862
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getInteger()J
    .locals 2

    .line 910
    iget-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    return-wide v0
.end method

.method public getListItem(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getListItemCount()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMacroReference()Ljava/lang/String;
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 767
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 768
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 770
    :cond_0
    check-cast v0, [B

    .line 771
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMacroReferenceAsBytes()[B
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 784
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 785
    check-cast v0, Ljava/lang/String;

    .line 786
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 787
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object v0

    .line 790
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMapKeyCount()I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMapValueCount()I
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableEscapingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1088
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureEscapingInitialized()V

    .line 1089
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableListItem(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMutableListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 484
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 485
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMapKey(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMutableMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 583
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 584
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMapValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMutableMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 682
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 683
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMutableTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 995
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 996
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1484
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 1486
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 1487
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getStringAsBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v0, v3

    .line 1490
    :cond_0
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    if-eqz v3, :cond_2

    move v3, v0

    move v0, v2

    .line 1491
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v4, 0x3

    .line 1492
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1496
    :cond_2
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    const/4 v4, 0x4

    if-eqz v3, :cond_4

    move v3, v0

    move v0, v2

    .line 1497
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1498
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 1502
    :cond_4
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-eqz v3, :cond_6

    move v3, v0

    move v0, v2

    .line 1503
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    const/4 v5, 0x5

    .line 1504
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    .line 1508
    :cond_6
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    .line 1509
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMacroReferenceAsBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v0, v3

    .line 1512
    :cond_7
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x7

    .line 1513
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getFunctionIdAsBytes()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v0, v3

    .line 1516
    :cond_8
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v5, 0x10

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_9

    .line 1517
    iget-wide v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    invoke-static {v4, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 1520
    :cond_9
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    const/16 v3, 0xc

    .line 1521
    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 1524
    :cond_a
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-eqz v3, :cond_c

    move v3, v0

    move v0, v2

    .line 1525
    :goto_3
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    const/16 v4, 0xb

    .line 1526
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v3

    .line 1530
    :cond_c
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    move v3, v2

    .line 1532
    :goto_4
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 1533
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;

    invoke-virtual {v4}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    add-int/2addr v0, v3

    .line 1537
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1539
    :cond_e
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0x9

    .line 1540
    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1543
    :cond_f
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1544
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1545
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->cachedSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    .line 398
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 401
    :cond_0
    check-cast v0, [B

    .line 402
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getStringAsBytes()[B
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    .line 415
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 416
    check-cast v0, Ljava/lang/String;

    .line 417
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 418
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    return-object v0

    .line 421
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getTemplateTokenCount()I
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 986
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object v0
.end method

.method public hasBoolean()Z
    .locals 2

    .line 939
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContainsReferences()Z
    .locals 2

    .line 1157
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunctionId()Z
    .locals 2

    .line 832
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInteger()Z
    .locals 2

    .line 904
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v1, 0x10

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

    .line 760
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasString()Z
    .locals 2

    .line 391
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 353
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

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
    .locals 6

    .line 1642
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 1644
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 1647
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasString()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 1649
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1651
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItemCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 1653
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1655
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKeyCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 1657
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1659
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValueCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 1661
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1663
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasMacroReference()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 1665
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1667
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasFunctionId()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    mul-int/2addr v0, v2

    .line 1669
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1671
    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasInteger()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v2

    .line 1673
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getInteger()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1676
    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xc

    mul-int/2addr v0, v2

    .line 1678
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getBoolean()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1681
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateTokenCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xb

    mul-int/2addr v0, v2

    .line 1683
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateTokenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1685
    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getEscapingCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xa

    mul-int/2addr v0, v2

    .line 1687
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getEscapingList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnumList(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1690
    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasContainsReferences()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x9

    mul-int/2addr v2, v3

    .line 1692
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getContainsReferences()Z

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v0, v2

    :cond_b
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 1695
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1703
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.midtier.proto.containertag.TypeSystem$Value"

    .line 1704
    invoke-static {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 1706
    :cond_0
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1185
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1188
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1189
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItem(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1193
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1194
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1198
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValueCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1199
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1203
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateTokenCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1204
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1208
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 1218
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1222
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 1223
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->setType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1226
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasString()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1227
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1228
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1229
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    goto :goto_0

    .line 1231
    :cond_3
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    check-cast v0, [B

    .line 1232
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    .line 1235
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1236
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 1237
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1240
    :cond_5
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1241
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 1242
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1245
    :cond_6
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1246
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 1247
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1250
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasMacroReference()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1251
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1252
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1253
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    goto :goto_1

    .line 1255
    :cond_8
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    check-cast v0, [B

    .line 1256
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    .line 1259
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasFunctionId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1260
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1261
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1262
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    goto :goto_2

    .line 1264
    :cond_a
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    check-cast v0, [B

    .line 1265
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    .line 1268
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasInteger()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1269
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getInteger()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->setInteger(J)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1271
    :cond_c
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasContainsReferences()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1272
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getContainsReferences()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1274
    :cond_d
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1275
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureEscapingInitialized()V

    .line 1276
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1278
    :cond_e
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1279
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 1280
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1283
    :cond_f
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1284
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 1286
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeExtensionFields(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;)V

    .line 1287
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 14
    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 8

    .line 1294
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    const/4 v0, 0x0

    .line 1296
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 1298
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_7

    .line 1303
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1309
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    goto/16 :goto_3

    .line 1402
    :sswitch_0
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1403
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    goto :goto_0

    .line 1398
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->addTemplateToken()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1379
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1380
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1381
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_3

    .line 1382
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 1383
    invoke-static {v6}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1385
    invoke-virtual {v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1386
    invoke-virtual {v2, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_1

    .line 1388
    :cond_1
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-nez v6, :cond_2

    .line 1389
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    .line 1391
    :cond_2
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1394
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/tagmanager/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 1365
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 1366
    invoke-static {v4}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1368
    invoke-virtual {v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1369
    invoke-virtual {v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 1371
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1372
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    .line 1374
    :cond_5
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1360
    :sswitch_4
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1361
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    goto/16 :goto_0

    .line 1355
    :sswitch_5
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1356
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    goto/16 :goto_0

    .line 1350
    :sswitch_6
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1351
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1345
    :sswitch_7
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1346
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1341
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->addMapValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 1337
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->addMapKey()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->addListItem()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 1328
    :sswitch_b
    iget v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1329
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1316
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 1317
    invoke-static {v6}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->valueOf(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1319
    invoke-virtual {v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1320
    invoke-virtual {v2, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto/16 :goto_0

    .line 1322
    :cond_6
    iget v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1323
    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    goto/16 :goto_0

    :goto_2
    :sswitch_d
    move v3, v4

    goto/16 :goto_0

    :goto_3
    if-nez v5, :cond_0

    goto :goto_2

    .line 1408
    :cond_7
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 1409
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 22
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessageForType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 951
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 952
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 953
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    return-object p0
.end method

.method public setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 1170
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 1171
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    return-object p0
.end method

.method public setEscaping(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p2, :cond_0

    .line 1111
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1113
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureEscapingInitialized()V

    .line 1114
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFunctionId(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 870
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 871
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 872
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFunctionIdAsBytes([B)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 881
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 882
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 883
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setInteger(J)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    .line 917
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 918
    iput-wide p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    return-object p0
.end method

.method public setListItem(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p2, :cond_0

    .line 539
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureListItemInitialized()V

    .line 542
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroReference(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 798
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 799
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 800
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroReferenceAsBytes([B)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 809
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 810
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 811
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMapKey(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p2, :cond_0

    .line 638
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapKeyInitialized()V

    .line 641
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapValue(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p2, :cond_0

    .line 737
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureMapValueInitialized()V

    .line 740
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setString(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 429
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 430
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 431
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public setStringAsBytes([B)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 440
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 441
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 442
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateToken(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 1048
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p2, :cond_0

    .line 1050
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->ensureTemplateTokenInitialized()V

    .line 1053
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->assertMutable()V

    if-nez p1, :cond_0

    .line 367
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 369
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    .line 370
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1553
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

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

    .line 1419
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 1422
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newExtensionWriter()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v1

    .line 1423
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->type_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1424
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getStringAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1427
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    .line 1428
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x3

    .line 1429
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->listItem_:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    const/4 v4, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    .line 1434
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1435
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapKey_:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1439
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    if-eqz v2, :cond_3

    move v2, v3

    .line 1440
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    const/4 v5, 0x5

    .line 1441
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mapValue_:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1445
    :cond_3
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    const/4 v2, 0x6

    .line 1446
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMacroReferenceAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1448
    :cond_4
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x7

    .line 1449
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getFunctionIdAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1451
    :cond_5
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v5, 0x10

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_6

    .line 1452
    iget-wide v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->integer_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1454
    :cond_6
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    const/16 v2, 0x9

    .line 1455
    iget-boolean v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->containsReferences_:Z

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1457
    :cond_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    if-eqz v2, :cond_8

    move v2, v3

    .line 1458
    :goto_3
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    const/16 v4, 0xa

    .line 1459
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->escaping_:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;

    invoke-virtual {v5}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Escaping;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1462
    :cond_8
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 1463
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    const/16 v2, 0xb

    .line 1464
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->templateToken_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1468
    :cond_9
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xc

    .line 1469
    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->boolean_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_a
    const/high16 v2, 0x20000000

    .line 1471
    invoke-virtual {v1, v2, p1}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/tagmanager/protobuf/CodedOutputStream;)V

    .line 1472
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 1473
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 1474
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_b

    .line 1475
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void
.end method
