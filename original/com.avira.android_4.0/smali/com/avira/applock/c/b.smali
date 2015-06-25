.class final Lcom/avira/applock/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avira/applock/c/a;


# direct methods
.method constructor <init>(Lcom/avira/applock/c/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avira/applock/c/b;->a:Lcom/avira/applock/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avira/applock/c/b;->a:Lcom/avira/applock/c/a;

    invoke-static {v0}, Lcom/avira/applock/c/a;->a(Lcom/avira/applock/c/a;)Lcom/avira/applock/c/d;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/applock/c/d;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/avira/applock/c/b;->a:Lcom/avira/applock/c/a;

    invoke-static {v0}, Lcom/avira/applock/c/a;->b(Lcom/avira/applock/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/avira/applock/c/b;->a:Lcom/avira/applock/c/a;

    invoke-static {v0}, Lcom/avira/applock/c/a;->c(Lcom/avira/applock/c/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 66
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
