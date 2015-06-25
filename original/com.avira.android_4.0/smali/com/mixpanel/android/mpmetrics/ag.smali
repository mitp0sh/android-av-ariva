.class final Lcom/mixpanel/android/mpmetrics/ag;
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
    .line 117
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ag;->a:Lcom/mixpanel/android/mpmetrics/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ag;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ac;->a(Lcom/mixpanel/android/mpmetrics/ac;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    const-string v1, "$surveys"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ag;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/ap;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ag;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ae;->b:Lcom/mixpanel/android/mpmetrics/ad;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ac;->a(Lcom/mixpanel/android/mpmetrics/ac;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    const-string v1, "$collections"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/ag;->a:Lcom/mixpanel/android/mpmetrics/ae;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/ae;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/ap;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void
.end method
