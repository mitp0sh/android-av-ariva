.class final Lcom/mixpanel/android/mpmetrics/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ae;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ae;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/af;->a:Lcom/mixpanel/android/mpmetrics/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/af;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ac;->a(Lcom/mixpanel/android/mpmetrics/ac;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/af;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/af;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/v;->a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;)V

    .line 115
    return-void
.end method
