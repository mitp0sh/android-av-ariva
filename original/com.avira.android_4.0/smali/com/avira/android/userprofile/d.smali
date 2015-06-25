.class final Lcom/avira/android/userprofile/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/EditUserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/EditUserDetailsActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avira/android/userprofile/d;->a:Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/userprofile/d;->a:Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->b(Lcom/avira/android/userprofile/EditUserDetailsActivity;)Lcom/avira/android/userprofile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/avira/android/userprofile/d;->a:Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->a(Lcom/avira/android/userprofile/EditUserDetailsActivity;)Lcom/avira/android/userprofile/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/e;->a()V

    .line 55
    :cond_0
    return-void
.end method
