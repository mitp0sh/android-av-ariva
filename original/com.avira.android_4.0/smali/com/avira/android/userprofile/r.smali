.class final Lcom/avira/android/userprofile/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/q;


# direct methods
.method private constructor <init>(Lcom/avira/android/userprofile/q;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/userprofile/q;B)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/avira/android/userprofile/r;-><init>(Lcom/avira/android/userprofile/q;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v1}, Lcom/avira/android/userprofile/q;->a(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v2, "profileImageSavedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    iget-object v2, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v2}, Lcom/avira/android/userprofile/q;->b(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/userprofile/q;->a(Lcom/avira/android/userprofile/q;[B)[B

    .line 556
    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v0}, Lcom/avira/android/userprofile/q;->c(Lcom/avira/android/userprofile/q;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v0}, Lcom/avira/android/userprofile/q;->c(Lcom/avira/android/userprofile/q;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v0}, Lcom/avira/android/userprofile/q;->c(Lcom/avira/android/userprofile/q;)[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v2}, Lcom/avira/android/userprofile/q;->c(Lcom/avira/android/userprofile/q;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v1}, Lcom/avira/android/userprofile/q;->d(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/userprofile/g;->a(Landroid/graphics/Bitmap;)V

    .line 561
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v2, "profileNameSavedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v0}, Lcom/avira/android/userprofile/q;->b(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v2, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v2}, Lcom/avira/android/userprofile/q;->b(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/avira/android/userprofile/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v2}, Lcom/avira/android/userprofile/q;->d(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/g;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/avira/android/userprofile/g;->a(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/avira/android/userprofile/r;->a:Lcom/avira/android/userprofile/q;

    invoke-static {v0}, Lcom/avira/android/userprofile/q;->d(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/g;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/avira/android/userprofile/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
