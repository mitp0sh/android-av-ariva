.class final Lcom/avira/android/premium/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/premium/DashboardPremiumActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/premium/DashboardPremiumActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avira/android/premium/a;->a:Lcom/avira/android/premium/DashboardPremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/premium/a;->a:Lcom/avira/android/premium/DashboardPremiumActivity;

    invoke-virtual {v0}, Lcom/avira/android/premium/DashboardPremiumActivity;->finish()V

    .line 34
    return-void
.end method
