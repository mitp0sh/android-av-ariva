.class public final Lcom/avira/android/cropimage/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/q;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private final a:[Lcom/avira/android/cropimage/q;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/avira/android/cropimage/w;",
            ">;"
        }
    .end annotation
.end field

.field private c:[J

.field private d:I

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>([Lcom/avira/android/cropimage/q;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, [Lcom/avira/android/cropimage/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/cropimage/q;

    iput-object v0, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    .line 52
    new-instance v2, Ljava/util/PriorityQueue;

    const/4 v3, 0x4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/avira/android/cropimage/u;

    invoke-direct {v0, v1}, Lcom/avira/android/cropimage/u;-><init>(B)V

    :goto_0
    invoke-direct {v2, v3, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/avira/android/cropimage/t;->c:[J

    .line 55
    iput v1, p0, Lcom/avira/android/cropimage/t;->d:I

    .line 56
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/avira/android/cropimage/t;->e:[I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/avira/android/cropimage/t;->f:I

    .line 58
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 59
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    array-length v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 61
    iget-object v1, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    aget-object v1, v1, v0

    .line 62
    new-instance v3, Lcom/avira/android/cropimage/w;

    invoke-direct {v3, v1, v0}, Lcom/avira/android/cropimage/w;-><init>(Lcom/avira/android/cropimage/q;I)V

    .line 63
    invoke-virtual {v3}, Lcom/avira/android/cropimage/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Lcom/avira/android/cropimage/v;

    invoke-direct {v0, v1}, Lcom/avira/android/cropimage/v;-><init>(B)V

    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/avira/android/cropimage/p;
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x20

    const/4 v4, 0x0

    .line 109
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/avira/android/cropimage/t;->b()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/cropimage/t;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->e:[I

    .line 117
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    .line 127
    iget v5, p0, Lcom/avira/android/cropimage/t;->d:I

    move v1, v4

    move v0, v4

    :goto_0
    if-ge v1, v5, :cond_a

    .line 129
    iget-object v3, p0, Lcom/avira/android/cropimage/t;->c:[J

    aget-wide v6, v3, v1

    .line 131
    const-wide/16 v8, -0x1

    and-long/2addr v8, v6

    long-to-int v8, v8

    .line 132
    shr-long/2addr v6, v10

    long-to-int v6, v6

    .line 133
    add-int v3, v0, v8

    if-le v3, p1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/avira/android/cropimage/t;->e:[I

    aget v1, v1, v6

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    aget-object v1, v1, v6

    invoke-interface {v1, v0}, Lcom/avira/android/cropimage/q;->a(I)Lcom/avira/android/cropimage/p;

    move-result-object v0

    .line 152
    :cond_2
    :goto_1
    return-object v0

    .line 138
    :cond_3
    add-int v3, v0, v8

    .line 139
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->e:[I

    aget v7, v0, v6

    add-int/2addr v7, v8

    aput v7, v0, v6

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v3}, Lcom/avira/android/cropimage/w;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/w;

    if-nez v0, :cond_6

    move-object v3, v2

    .line 145
    :goto_3
    if-nez v3, :cond_9

    move-object v0, v2

    .line 146
    goto :goto_1

    .line 144
    :cond_6
    iget v3, v0, Lcom/avira/android/cropimage/w;->a:I

    iget v5, p0, Lcom/avira/android/cropimage/t;->f:I

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/avira/android/cropimage/t;->d:I

    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Lcom/avira/android/cropimage/t;->c:[J

    aget-wide v6, v5, v3

    add-long/2addr v6, v12

    aput-wide v6, v5, v3

    :goto_4
    move-object v3, v0

    goto :goto_3

    :cond_7
    iget v3, v0, Lcom/avira/android/cropimage/w;->a:I

    iput v3, p0, Lcom/avira/android/cropimage/t;->f:I

    iget-object v3, p0, Lcom/avira/android/cropimage/t;->c:[J

    array-length v3, v3

    iget v5, p0, Lcom/avira/android/cropimage/t;->d:I

    if-ne v3, v5, :cond_8

    iget v3, p0, Lcom/avira/android/cropimage/t;->d:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [J

    iget-object v5, p0, Lcom/avira/android/cropimage/t;->c:[J

    iget v6, p0, Lcom/avira/android/cropimage/t;->d:I

    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/avira/android/cropimage/t;->c:[J

    :cond_8
    iget-object v3, p0, Lcom/avira/android/cropimage/t;->c:[J

    iget v5, p0, Lcom/avira/android/cropimage/t;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/avira/android/cropimage/t;->d:I

    iget v6, p0, Lcom/avira/android/cropimage/t;->f:I

    int-to-long v6, v6

    shl-long/2addr v6, v10

    or-long/2addr v6, v12

    aput-wide v6, v3, v5

    goto :goto_4

    .line 147
    :cond_9
    if-ne v1, p1, :cond_4

    .line 149
    iget-object v0, v3, Lcom/avira/android/cropimage/w;->c:Lcom/avira/android/cropimage/p;

    .line 150
    invoke-virtual {v3}, Lcom/avira/android/cropimage/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/avira/android/cropimage/t;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    move v1, v0

    goto :goto_2
.end method

.method public final a(Landroid/net/Uri;)Lcom/avira/android/cropimage/p;
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 188
    invoke-interface {v0, p1}, Lcom/avira/android/cropimage/q;->a(Landroid/net/Uri;)Lcom/avira/android/cropimage/p;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 192
    :goto_1
    return-object v0

    .line 186
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/avira/android/cropimage/q;->a()V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 82
    .line 83
    iget-object v2, p0, Lcom/avira/android/cropimage/t;->a:[Lcom/avira/android/cropimage/q;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 85
    invoke-interface {v4}, Lcom/avira/android/cropimage/q;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return v1
.end method
