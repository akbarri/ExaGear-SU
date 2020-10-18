.class final Lcom/google/tagmanager/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/tagmanager/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/google/tagmanager/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/tagmanager/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    const/16 v0, 0x10

    .line 51
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/tagmanager/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    .line 59
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/tagmanager/protobuf/SmallSortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    .line 60
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method private cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 274
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 275
    instance-of v1, p2, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 276
    check-cast p2, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static computeElementSize(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    .line 918
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 919
    sget-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    .line 922
    move-object v0, p2

    check-cast v0, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isProto1Group(Lcom/google/tagmanager/protobuf/MessageLite;)Z

    move-result v0

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 926
    :cond_0
    invoke-static {p0, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static computeElementSizeNoTag(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 1

    .line 941
    sget-object v0, Lcom/google/tagmanager/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 982
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 974
    :pswitch_0
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_0

    .line 975
    check-cast p1, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 978
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 967
    :pswitch_1
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p0, :cond_1

    .line 968
    check-cast p1, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/tagmanager/protobuf/LazyField;)I

    move-result p0

    return p0

    .line 970
    :cond_1
    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 953
    :pswitch_2
    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 964
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 963
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 962
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 961
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 960
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 955
    :pswitch_8
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz p0, :cond_2

    .line 956
    check-cast p1, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/tagmanager/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 958
    :cond_2
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p0

    return p0

    .line 952
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 951
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p0

    return p0

    .line 950
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 949
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 948
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 947
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 946
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 945
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p0

    return p0

    .line 944
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static computeFieldSize(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 991
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 992
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 993
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 994
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 996
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 997
    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 999
    :cond_0
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 1004
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1005
    invoke-static {v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->computeElementSize(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 1010
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->computeElementSize(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private convertToImmutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_3

    .line 127
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    check-cast p2, Ljava/util/List;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 136
    :cond_1
    instance-of p1, p2, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p1, :cond_2

    .line 137
    check-cast p2, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    .line 140
    :cond_2
    check-cast p2, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-interface {p2}, Lcom/google/tagmanager/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    .line 142
    :cond_3
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    .line 144
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 145
    check-cast p2, Ljava/util/List;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    check-cast v0, [B

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom([B)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1

    .line 152
    :cond_5
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom([B)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2
.end method

.method private convertToMutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_3

    .line 163
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    check-cast p2, Ljava/util/List;

    .line 166
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 167
    check-cast v0, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/MessageLite;->mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 171
    :cond_1
    instance-of p1, p2, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p1, :cond_2

    .line 172
    check-cast p2, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MessageLite;->mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object p1

    return-object p1

    .line 174
    :cond_2
    check-cast p2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {p2}, Lcom/google/tagmanager/protobuf/MessageLite;->mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    .line 178
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 179
    check-cast p2, Ljava/util/List;

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 182
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1

    .line 186
    :cond_5
    check-cast p2, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p2}, Lcom/google/tagmanager/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2
.end method

.method public static emptySet()Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/google/tagmanager/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/tagmanager/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 888
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 889
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 890
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    instance-of v0, v1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 893
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/google/tagmanager/protobuf/LazyField;)I

    move-result p1

    return p1

    .line 896
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result p1

    return p1

    .line 900
    :cond_1
    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/FieldSet;->computeFieldSize(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static getWireFormatForFieldType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 527
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 528
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 530
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/MessageLite;

    .line 531
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 536
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 537
    instance-of v0, p1, Lcom/google/tagmanager/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 538
    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MessageLite;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 541
    :cond_2
    instance-of p1, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p1, :cond_3

    return v3

    .line 544
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v3
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 584
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 585
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 586
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 587
    check-cast p1, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    .line 590
    :cond_0
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 599
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 601
    :cond_2
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    .line 602
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 604
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 607
    :cond_3
    instance-of v2, v1, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    if-eqz v2, :cond_4

    .line 608
    check-cast v1, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    check-cast p1, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-interface {v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object p1

    goto :goto_0

    .line 611
    :cond_4
    check-cast v1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/MessageLite;->toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/tagmanager/protobuf/MessageLite$Builder;Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/MessageLite$Builder;->build()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    :cond_5
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static newFieldSet()Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    sget-object v0, Lcom/google/tagmanager/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 677
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 673
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 668
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 665
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 661
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readSInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 660
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 659
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 657
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBytes()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_9
    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 650
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 649
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 648
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 647
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 646
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 645
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 644
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static readPrimitiveFieldForMutable(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    sget-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object p0

    return-object p0

    .line 692
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->readPrimitiveField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static verifyType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 460
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 464
    :cond_0
    sget-object v0, Lcom/google/tagmanager/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 481
    :pswitch_0
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    move v1, v0

    goto :goto_1

    .line 476
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 472
    :pswitch_2
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/ByteString;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_2

    goto :goto_0

    .line 470
    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_1

    .line 469
    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 468
    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_1

    .line 467
    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_1

    .line 466
    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_1

    .line 465
    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 494
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method private static writeElement(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_1

    .line 755
    check-cast p3, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {p3}, Lcom/google/tagmanager/protobuf/Internal;->isProto1Group(Lcom/google/tagmanager/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 756
    invoke-virtual {p0, p2, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 757
    invoke-virtual {p0, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroup(ILcom/google/tagmanager/protobuf/MessageLite;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 764
    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    .line 765
    invoke-static {p0, p1, p3}, Lcom/google/tagmanager/protobuf/FieldSet;->writeElementNoTag(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static writeElementNoTag(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/google/tagmanager/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 809
    :pswitch_0
    instance-of p1, p2, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_0

    .line 810
    check-cast p2, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/google/tagmanager/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 812
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 794
    :pswitch_1
    check-cast p2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    goto/16 :goto_0

    .line 793
    :pswitch_2
    check-cast p2, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/tagmanager/protobuf/MessageLite;)V

    goto/16 :goto_0

    .line 806
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_0

    .line 805
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    .line 804
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    .line 803
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    .line 802
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto :goto_0

    .line 796
    :pswitch_8
    instance-of p1, p2, Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz p1, :cond_1

    .line 797
    check-cast p2, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/tagmanager/protobuf/ByteString;)V

    goto :goto_0

    .line 799
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    goto :goto_0

    .line 792
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_0

    .line 790
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 789
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 788
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_0

    .line 787
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_0

    .line 786
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0

    .line 785
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_0

    .line 784
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static writeField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/tagmanager/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 824
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 825
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    check-cast p1, Ljava/util/List;

    .line 827
    invoke-interface {p0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 828
    invoke-virtual {p2, v1, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p0, 0x0

    .line 831
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 832
    invoke-static {v0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {p2, p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 836
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 837
    invoke-static {p2, v0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeElementNoTag(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 840
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 841
    invoke-static {p2, v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeElement(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    .line 845
    :cond_2
    instance-of p0, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz p0, :cond_3

    .line 846
    check-cast p1, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/google/tagmanager/protobuf/FieldSet;->writeElement(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_3

    .line 848
    :cond_3
    invoke-static {p2, v0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeElement(Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/tagmanager/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 728
    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p2, v0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/tagmanager/protobuf/MessageLite;)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->writeField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 431
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_0
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->verifyType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 444
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 447
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->clear()V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    return-void
.end method

.method public clearField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 360
    iput-boolean p1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    :cond_0
    return-void
.end method

.method public clone()Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/google/tagmanager/protobuf/FieldSet;->newFieldSet()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/FieldSet;->clone()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithAllFieldsToImmutable()Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/google/tagmanager/protobuf/FieldSet;->newFieldSet()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v3, v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->convertToImmutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->convertToImmutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 213
    :cond_1
    iput-boolean v1, v0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public cloneWithAllFieldsToMutable()Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/google/tagmanager/protobuf/FieldSet;->newFieldSet()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v3, v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 228
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 229
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->convertToMutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    .line 234
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->convertToMutable(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/tagmanager/protobuf/FieldSet;->setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    :cond_1
    iput-boolean v1, v0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    .line 254
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/tagmanager/protobuf/SmallSortedMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 261
    invoke-direct {p0, v0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->makeImmutable()V

    :cond_2
    return-object v0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 316
    instance-of v0, p1, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Lcom/google/tagmanager/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/LazyField;->getValue()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public getMessageSetSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 876
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 881
    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public getRepeatedField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 388
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 396
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 398
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 369
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 378
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 859
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 860
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 862
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->computeFieldSize(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 866
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->computeFieldSize(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public hasField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isImmutable()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 509
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 516
    invoke-direct {p0, v2}, Lcom/google/tagmanager/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->makeImmutable()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->isImmutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 572
    :goto_0
    iget-object v1, p1, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 573
    iget-object v1, p1, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p1, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 329
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 340
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/FieldSet;->verifyType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1

    .line 344
    :cond_2
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->verifyType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 347
    :goto_1
    instance-of v0, p2, Lcom/google/tagmanager/protobuf/LazyField;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->hasLazyField:Z

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRepeatedField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 410
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 417
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 420
    :cond_1
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/tagmanager/protobuf/FieldSet;->verifyType(Lcom/google/tagmanager/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 421
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeMessageSetTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 715
    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 720
    invoke-direct {p0, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 702
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/FieldSet;->fields:Lcom/google/tagmanager/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->writeField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method
