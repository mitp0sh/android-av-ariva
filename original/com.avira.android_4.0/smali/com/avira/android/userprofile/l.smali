.class final Lcom/avira/android/userprofile/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/k;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/k;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/avira/android/userprofile/l;->a:Lcom/avira/android/userprofile/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avira/android/userprofile/l;->a:Lcom/avira/android/userprofile/k;

    invoke-static {v0}, Lcom/avira/android/userprofile/k;->a(Lcom/avira/android/userprofile/k;)Lcom/avira/android/userprofile/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->j()V

    .line 84
    return-void
.end method