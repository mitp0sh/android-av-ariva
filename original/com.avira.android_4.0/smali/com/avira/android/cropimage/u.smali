.class final Lcom/avira/android/cropimage/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/avira/android/cropimage/w;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/avira/android/cropimage/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 300
    check-cast p1, Lcom/avira/android/cropimage/w;

    check-cast p2, Lcom/avira/android/cropimage/w;

    iget-wide v0, p1, Lcom/avira/android/cropimage/w;->b:J

    iget-wide v2, p2, Lcom/avira/android/cropimage/w;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/avira/android/cropimage/w;->b:J

    iget-wide v2, p2, Lcom/avira/android/cropimage/w;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/avira/android/cropimage/w;->a:I

    iget v1, p2, Lcom/avira/android/cropimage/w;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
