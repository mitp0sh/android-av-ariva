.class final Lcom/avira/android/userprofile/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->c(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I

    .line 41
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/k;->a(Z)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/b;->a()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/b;->a()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->c(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I

    .line 64
    iget-object v0, p0, Lcom/avira/android/userprofile/a;->a:Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/k;->a(Z)V

    goto :goto_0
.end method
