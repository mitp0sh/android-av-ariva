.class Lcom/facebook/widget/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/ak",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/by;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/facebook/widget/am;

.field private g:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/ak;->e:I

    .line 532
    if-nez p2, :cond_0

    .line 533
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 535
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iput-object p2, p0, Lcom/facebook/widget/ak;->c:Ljava/lang/String;

    .line 538
    iput-object p1, p0, Lcom/facebook/widget/ak;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/widget/ak;->d:Ljava/lang/String;

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/widget/af;
    .locals 6

    .prologue
    .line 574
    iget-object v0, p0, Lcom/facebook/widget/ak;->b:Lcom/facebook/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/ak;->b:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/ak;->b:Lcom/facebook/by;

    invoke-virtual {v2}, Lcom/facebook/by;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/widget/ak;->b:Lcom/facebook/by;

    invoke-virtual {v2}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    new-instance v0, Lcom/facebook/widget/af;

    iget-object v1, p0, Lcom/facebook/widget/ak;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/widget/ak;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/widget/ak;->e:I

    iget-object v5, p0, Lcom/facebook/widget/ak;->f:Lcom/facebook/widget/am;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/af;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/am;)V

    return-object v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/ak;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/widget/am;)Lcom/facebook/widget/ak;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/am;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 561
    iput-object p1, p0, Lcom/facebook/widget/ak;->f:Lcom/facebook/widget/am;

    .line 564
    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/facebook/widget/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/facebook/widget/ak;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/facebook/widget/ak;->e:I

    return v0
.end method

.method protected final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/facebook/widget/ak;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final f()Lcom/facebook/widget/am;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/facebook/widget/ak;->f:Lcom/facebook/widget/am;

    return-object v0
.end method
