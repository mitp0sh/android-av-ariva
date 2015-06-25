.class final Lcom/avira/applock/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/avira/applock/c/a;


# direct methods
.method constructor <init>(Lcom/avira/applock/c/a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/avira/applock/c/c;->a:Lcom/avira/applock/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 85
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/avira/applock/c/c;->a:Lcom/avira/applock/c/a;

    invoke-static {v0}, Lcom/avira/applock/c/a;->a(Lcom/avira/applock/c/a;)Lcom/avira/applock/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/applock/c/c;->a:Lcom/avira/applock/c/a;

    invoke-static {v1}, Lcom/avira/applock/c/a;->d(Lcom/avira/applock/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/applock/c/d;->b(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
