.class Lcom/google/analytics/tracking/android/GAUsage;
.super Ljava/lang/Object;
.source "GAUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAUsage$Field;
    }
.end annotation


# static fields
.field private static final BASE_64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

.field private static final INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;


# instance fields
.field private mDisableUsage:Z

.field private mSequence:Ljava/lang/StringBuilder;

.field private mUsedFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/google/analytics/tracking/android/GAUsage$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z

    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-object v0
.end method

.method static getPrivateInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAndClearSequence()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 186
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearUsage()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    move v3, v1

    move v4, v2

    .line 144
    :goto_0
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/tracking/android/GAUsage$Field;

    .line 149
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v6, v5}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v6

    :goto_1
    if-lt v6, v4, :cond_0

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 159
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x6

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    .line 163
    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v5

    rem-int/2addr v5, v2

    shl-int v5, v6, v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    if-gtz v3, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 133
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisableUsage(Z)V
    .locals 0

    monitor-enter p0

    .line 117
    :try_start_0
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mDisableUsage:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mUsedFields:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->mSequence:Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit p0

    throw p1
.end method
