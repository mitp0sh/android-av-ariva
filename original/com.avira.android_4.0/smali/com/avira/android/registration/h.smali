.class final Lcom/avira/android/registration/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/avira/android/registration/LoginActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/registration/LoginActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avira/android/registration/h;->a:Lcom/avira/android/registration/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/avira/android/registration/h;->a:Lcom/avira/android/registration/LoginActivity;

    invoke-static {v0}, Lcom/avira/android/registration/LoginActivity;->a(Lcom/avira/android/registration/LoginActivity;)Lcom/avira/android/registration/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->q()V

    .line 71
    :cond_0
    return-void
.end method
