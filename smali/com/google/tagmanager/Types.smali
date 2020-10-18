.class Lcom/google/tagmanager/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static DEFAULT_BOOLEAN:Ljava/lang/Boolean;

.field private static DEFAULT_DOUBLE:Ljava/lang/Double;

.field private static DEFAULT_INT64:Ljava/lang/Long;

.field private static DEFAULT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

.field private static final DEFAULT_OBJECT:Ljava/lang/Object;

.field private static DEFAULT_STRING:Ljava/lang/String;

.field private static DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    .line 46
    invoke-static {v1, v2}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static functionIdToValue(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2

    .line 251
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->newBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->FUNCTION_ID:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setFunctionId(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 70
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getDefaultDouble()Ljava/lang/Double;
    .locals 1

    .line 66
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    return-object v0
.end method

.method public static getDefaultInt64()Ljava/lang/Long;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    return-object v0
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultNumber()Lcom/google/tagmanager/TypedNumber;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v0
.end method

.method public static getDefaultObject()Ljava/lang/Object;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method public static getDefaultString()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 90
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2

    .line 297
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 298
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "getDouble received non-Number"

    .line 300
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getInt64(Ljava/lang/Object;)J
    .locals 2

    .line 321
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 322
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "getInt64 received non-Number"

    .line 324
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static isDoubleableNumber(Ljava/lang/Object;)Z
    .locals 1

    .line 287
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isDouble()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isInt64ableNumber(Ljava/lang/Object;)Z
    .locals 1

    .line 310
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs macroReferenceToValue(Ljava/lang/String;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 3

    .line 258
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->newBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setMacroReference(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 262
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 263
    invoke-virtual {p0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addEscaping(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p0

    return-object p0
.end method

.method public static objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .line 138
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 132
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 123
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseInt64(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;
    .locals 2

    .line 110
    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    return-object p0

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/TypedNumber;->numberWithDouble(Ljava/lang/Double;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    return-object p0

    .line 117
    :cond_2
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    return-object p0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 106
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 7

    .line 183
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->newBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    .line 186
    instance-of v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_0

    .line 187
    check-cast p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p0

    .line 188
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 189
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setString(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    goto/16 :goto_7

    .line 191
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 192
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->LIST:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 193
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 195
    sget-object v5, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v4, v5, :cond_2

    .line 198
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p0

    :cond_2
    if-nez v1, :cond_4

    .line 200
    invoke-virtual {v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    .line 201
    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addListItem(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    goto :goto_0

    .line 204
    :cond_5
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 205
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 207
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 208
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v5

    .line 210
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 211
    sget-object v6, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v4, v6, :cond_6

    goto :goto_6

    :cond_6
    if-nez v1, :cond_8

    .line 216
    invoke-virtual {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v1, v2

    .line 217
    :goto_5
    invoke-virtual {v0, v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addMapKey(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 218
    invoke-virtual {v0, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addMapValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    goto :goto_3

    .line 214
    :cond_9
    :goto_6
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p0

    .line 221
    :cond_a
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 224
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setString(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    goto :goto_7

    .line 226
    :cond_b
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 227
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->INTEGER:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setInteger(J)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    goto :goto_7

    .line 229
    :cond_c
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 230
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->BOOLEAN:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    :goto_7
    move v1, v3

    :cond_d
    if-eqz v1, :cond_e

    .line 239
    invoke-virtual {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 241
    :cond_e
    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p0

    return-object p0

    .line 233
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting to Value from unknown object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_10

    const-string p0, "null"

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 235
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p0
.end method

.method private static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "true"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string v0, "false"

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 364
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 366
    :cond_1
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 355
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    .line 357
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseInt64(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 349
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    .line 351
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    .locals 2

    .line 341
    :try_start_0
    invoke-static {p0}, Lcom/google/tagmanager/TypedNumber;->numberWithString(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 343
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to a number."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 344
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object p0
.end method

.method public static varargs templateToValue([Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 7

    .line 269
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->newBuilder()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 272
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget-object v6, p0, v3

    .line 273
    invoke-virtual {v0, v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addTemplateToken(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    if-nez v4, :cond_1

    .line 274
    invoke-virtual {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 277
    invoke-virtual {v0, v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 279
    :cond_3
    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p0

    return-object p0
.end method

.method public static valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    return-object p0
.end method

.method public static valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 5

    if-nez p0, :cond_0

    .line 372
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 375
    :cond_0
    sget-object v0, Lcom/google/tagmanager/Types$1;->$SwitchMap$com$google$analytics$midtier$proto$containertag$TypeSystem$Value$Type:[I

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert a value of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 451
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 447
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 434
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getTemplateTokenList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 436
    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 437
    sget-object v2, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 438
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 440
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getInteger()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "Trying to convert a function id to object"

    .line 427
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 428
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    :pswitch_4
    const-string p0, "Trying to convert a macro reference to object"

    .line 419
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 420
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 395
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValueCount()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting an invalid value to object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 397
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 399
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValueCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 400
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 401
    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v2

    .line 402
    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 403
    sget-object v4, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 408
    :cond_4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_5
    :goto_2
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    :cond_6
    return-object v0

    .line 380
    :pswitch_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 382
    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v1

    .line 383
    sget-object v2, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v1, v2, :cond_7

    .line 386
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object p0

    .line 388
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    .line 377
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
