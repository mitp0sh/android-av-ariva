.class final Lcom/avira/android/cropimage/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:J

.field c:Lcom/avira/android/cropimage/p;

.field private d:I

.field private final e:Lcom/avira/android/cropimage/q;


# direct methods
.method public constructor <init>(Lcom/avira/android/cropimage/q;I)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/avira/android/cropimage/w;->d:I

    .line 331
    iput-object p1, p0, Lcom/avira/android/cropimage/w;->e:Lcom/avira/android/cropimage/q;

    .line 332
    iput p2, p0, Lcom/avira/android/cropimage/w;->a:I

    .line 333
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/avira/android/cropimage/w;->d:I

    iget-object v1, p0, Lcom/avira/android/cropimage/w;->e:Lcom/avira/android/cropimage/q;

    invoke-interface {v1}, Lcom/avira/android/cropimage/q;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/w;->e:Lcom/avira/android/cropimage/q;

    iget v1, p0, Lcom/avira/android/cropimage/w;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avira/android/cropimage/w;->d:I

    invoke-interface {v0, v1}, Lcom/avira/android/cropimage/q;->a(I)Lcom/avira/android/cropimage/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/w;->c:Lcom/avira/android/cropimage/p;

    .line 340
    iget-object v0, p0, Lcom/avira/android/cropimage/w;->c:Lcom/avira/android/cropimage/p;

    invoke-interface {v0}, Lcom/avira/android/cropimage/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/cropimage/w;->b:J

    .line 341
    const/4 v0, 0x1

    goto :goto_0
.end method
