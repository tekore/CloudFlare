data "cloudflare_zone" "remoteforge-uk" {
  name = "remoteforge.uk"
}

resource "cloudflare_zone_dnssec" "remoteforge-uk" {
  zone_id = data.cloudflare_zone.remoteforge-uk.id
}

resource "cloudflare_record" "onprem" {
  zone_id = data.cloudflare_zone.remoteforge-uk.id
  name    = "onprem"
  content = var.onprem_ip
  type    = "A"
  ttl     = 3600
  depends_on = [data.cloudflare_zone.remoteforge-uk]
}

resource "cloudflare_record" "bastion" {
  zone_id = data.cloudflare_zone.remoteforge-uk.id
  name    = "bastion"
  content = var.bastion_ip
  type    = "A"
  ttl     = 3600
  depends_on = [data.cloudflare_zone.remoteforge-uk]
}
