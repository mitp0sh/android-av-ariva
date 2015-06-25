.class final Lcom/avira/android/userprofile/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/k;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/k;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avira/android/userprofile/m;->a:Lcom/avira/android/userprofile/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/avira/android/userprofile/m;->a:Lcom/avira/android/userprofile/k;

    invoke-static {v0}, Lcom/avira/android/userprofile/k;->a(Lcom/avira/android/userprofile/k;)Lcom/avira/android/userprofile/q;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/userprofile/m;->a:Lcom/avira/android/userprofile/k;

    invoke-static {v1}, Lcom/avira/android/userprofile/k;->b(Lcom/avira/android/userprofile/k;)Z

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->i()V

    .line 97
    :cond_0
    return-void
.end method
