.class final Lcom/avira/android/cropimage/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/avira/android/cropimage/d;

.field public b:Landroid/graphics/BitmapFactory$Options;

.field public c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/avira/android/cropimage/d;->ALLOW:Lcom/avira/android/cropimage/d;

    iput-object v0, p0, Lcom/avira/android/cropimage/e;->a:Lcom/avira/android/cropimage/d;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avira/android/cropimage/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avira/android/cropimage/e;->a:Lcom/avira/android/cropimage/d;

    sget-object v1, Lcom/avira/android/cropimage/d;->CANCEL:Lcom/avira/android/cropimage/d;

    if-ne v0, v1, :cond_0

    .line 55
    const-string v0, "Cancel"

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/cropimage/e;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/e;->a:Lcom/avira/android/cropimage/d;

    sget-object v1, Lcom/avira/android/cropimage/d;->ALLOW:Lcom/avira/android/cropimage/d;

    if-ne v0, v1, :cond_1

    .line 59
    const-string v0, "Allow"

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method
