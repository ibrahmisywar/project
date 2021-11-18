<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Listami
 *
 * @ORM\Table(name="listami", indexes={@ORM\Index(name="id_ami", columns={"id_ami"}), @ORM\Index(name="id_user", columns={"id_user"})})
 * @ORM\Entity
 */
class Listami
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_user", referencedColumnName="id_user")
     * })
     */
    private $idUser;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_ami", referencedColumnName="id_user")
     * })
     */
    private $idAmi;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdUser(): ?User
    {
        return $this->idUser;
    }

    public function setIdUser(?User $idUser): self
    {
        $this->idUser = $idUser;

        return $this;
    }

    public function getIdAmi(): ?User
    {
        return $this->idAmi;
    }

    public function setIdAmi(?User $idAmi): self
    {
        $this->idAmi = $idAmi;

        return $this;
    }


}
