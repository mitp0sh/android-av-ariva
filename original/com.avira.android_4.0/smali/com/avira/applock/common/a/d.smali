.class final Lcom/avira/applock/common/a/d;
.super Lcom/avira/applock/common/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/applock/common/a/c;


# direct methods
.method constructor <init>(Lcom/avira/applock/common/a/c;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    invoke-direct {p0}, Lcom/avira/applock/common/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->a()V

    .line 61
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->b()V

    .line 43
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    iget-object v0, v0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/b;->c()V

    .line 52
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    invoke-static {v0}, Lcom/avira/applock/common/a/c;->a(Lcom/avira/applock/common/a/c;)V

    .line 33
    iget-object v0, p0, Lcom/avira/applock/common/a/d;->a:Lcom/avira/applock/common/a/c;

    invoke-virtual {v0}, Lcom/avira/applock/common/a/c;->dismiss()V

    .line 34
    return-void
.end method
