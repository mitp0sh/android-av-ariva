.class final Lcom/google/android/gms/analytics/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ap;


# instance fields
.field a:Ljava/lang/String;

.field b:D

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/ab;->b:D

    iput v2, p0, Lcom/google/android/gms/analytics/ab;->c:I

    iput v2, p0, Lcom/google/android/gms/analytics/ab;->d:I

    iput v2, p0, Lcom/google/android/gms/analytics/ab;->e:I

    iput v2, p0, Lcom/google/android/gms/analytics/ab;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ab;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/ab;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
