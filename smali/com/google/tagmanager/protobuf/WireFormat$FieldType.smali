.class public enum Lcom/google/tagmanager/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 80
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 81
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 82
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->INT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 83
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 84
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->INT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 85
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 86
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED32"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 87
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "BOOL"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 88
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$1;

    const-string v1, "STRING"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v6}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->STRING:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 91
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$2;

    const-string v1, "GROUP"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v7}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 94
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$3;

    const-string v1, "MESSAGE"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v6}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 97
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$4;

    const-string v1, "BYTES"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v6}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 100
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "UINT32"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 101
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "ENUM"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 102
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED32"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v5}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 103
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED64"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 104
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "SINT32"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    .line 105
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const-string v1, "SINT64"

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v0, 0x12

    .line 79
    new-array v0, v0, [Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->INT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->INT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->STRING:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->javaType:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 109
    iput p4, p0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;ILcom/google/tagmanager/protobuf/WireFormat$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/tagmanager/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/WireFormat$FieldType;
    .locals 1

    .line 79
    const-class v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lcom/google/tagmanager/protobuf/WireFormat$FieldType;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->javaType:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
