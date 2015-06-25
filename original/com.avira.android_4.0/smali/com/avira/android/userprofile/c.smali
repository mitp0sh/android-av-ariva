.class final Lcom/avira/android/userprofile/c;
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
    .line 36
    iput-object p1, p0, Lcom/avira/android/userprofile/c;->a:Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avira/android/userprofile/c;->a:Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->a(Lcom/avira/android/userprofile/EditUserDetailsActivity;)Lcom/avira/android/userprofile/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/e;->b()V

    .line 42
    return-void
.end method
