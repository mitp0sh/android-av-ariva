.class final Lcom/facebook/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/z;


# instance fields
.field final synthetic a:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/ax;->a:Lcom/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/ax;->a:Lcom/facebook/LoginActivity;

    sget v1, Lcom/facebook/a/e;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/ax;->a:Lcom/facebook/LoginActivity;

    sget v1, Lcom/facebook/a/e;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void
.end method
