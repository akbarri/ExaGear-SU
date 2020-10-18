.class public final enum Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
.super Ljava/lang/Enum;
.source "MutableTypeSystem.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;",
        ">;",
        "Lcom/google/tagmanager/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final enum BOOLEAN:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final BOOLEAN_VALUE:I = 0x8

.field public static final enum FUNCTION_ID:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final FUNCTION_ID_VALUE:I = 0x5

.field public static final enum INTEGER:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final INTEGER_VALUE:I = 0x6

.field public static final enum LIST:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final LIST_VALUE:I = 0x2

.field public static final enum MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final MACRO_REFERENCE_VALUE:I = 0x4

.field public static final enum MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final MAP_VALUE:I = 0x3

.field public static final enum STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final STRING_VALUE:I = 0x1

.field public static final enum TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

.field public static final TEMPLATE_VALUE:I = 0x7

.field private static internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 51
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 55
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "LIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->LIST:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 59
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 63
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "MACRO_REFERENCE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 67
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "FUNCTION_ID"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->FUNCTION_ID:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 71
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "INTEGER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->INTEGER:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 75
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "TEMPLATE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 79
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    const-string v1, "BOOLEAN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v9, v10}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->BOOLEAN:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 46
    new-array v0, v10, [Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->LIST:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->FUNCTION_ID:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->INTEGER:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->BOOLEAN:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->$VALUES:[Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    .line 137
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type$1;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type$1;-><init>()V

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p4, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :pswitch_0
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->BOOLEAN:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 126
    :pswitch_1
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 125
    :pswitch_2
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->INTEGER:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 124
    :pswitch_3
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->FUNCTION_ID:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 123
    :pswitch_4
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 122
    :pswitch_5
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 121
    :pswitch_6
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->LIST:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    .line 120
    :pswitch_7
    sget-object p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0

    nop

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
    .locals 1

    .line 46
    const-class v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->$VALUES:[Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    invoke-virtual {v0}, [Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->value:I

    return v0
.end method
